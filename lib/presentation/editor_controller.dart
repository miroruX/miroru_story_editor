import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miroru_story_editor/extensions/color_extension.dart';
import 'package:miroru_story_editor/extensions/string_extension.dart';
import 'package:miroru_story_editor/model/entities/decoration/decoration_palette/decoration_palette.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/text/decoration_text.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_line/paint_line.dart';
import 'package:miroru_story_editor/model/entities/paint/paint_palette/paint_palette.dart';
import 'package:miroru_story_editor/model/entities/palette/palette.dart';
import 'package:miroru_story_editor/model/entities/theme/theme_data_dto.dart';
import 'package:miroru_story_editor/model/enums/brush_type.dart';
import 'package:miroru_story_editor/model/enums/font_type.dart';
import 'package:miroru_story_editor/util/get_theme_from_image.dart';
import 'package:perfect_freehand/perfect_freehand.dart';
import 'package:uuid/uuid.dart';

/// エディタ全体の状態を保持するコントローラー。
///
/// 以前は Riverpod のプロバイダ群で管理していた状態を、外部依存を持たない
/// [ChangeNotifier] / [ValueNotifier] に集約したもの。各状態は個別の
/// [ValueNotifier] として公開し、ウィジェット側は必要な状態だけを購読する。
class EditorController {
  EditorController({required this.themeDataDto}) {
    decorationPalette.addListener(_recomputeThemeMode);
    _recomputeThemeMode();
  }

  /// テーマ定義（呼び出し側から注入される）。
  final ThemeDataDto themeDataDto;

  /// エクスポート時に描画領域を取得するための [GlobalKey]。
  final GlobalKey paletteKey = GlobalKey();

  /// 編集中フラグ（描画中・テキスト編集中・移動中）。
  final ValueNotifier<Palette> palette = ValueNotifier(const Palette());

  /// 装飾アイテムの履歴。
  final ValueNotifier<DecorationPalette> decorationPalette = ValueNotifier(
    DecorationPalette(
      historyRenderItems: [
        [
          RenderItem<DecorationBackgroundImage>(
            transform: Matrix4.identity(),
            data: const DecorationBackgroundImage(),
            uuid: 'init-background-image',
            order: 0,
          ),
        ],
      ],
    ),
  );

  /// ペイントのパレット設定。
  final ValueNotifier<PaintPalette> paintPalette = ValueNotifier(
    PaintPalette(
      strokeOptions: StrokeOptions(
        size: 16,
        thinning: 0.4,
        smoothing: 0.2,
        streamline: 0.2,
        start: StrokeEndOptions.start(
          taperEnabled: true,
          customTaper: 0,
          cap: true,
        ),
        end: StrokeEndOptions.end(
          taperEnabled: true,
          customTaper: 0,
          cap: true,
        ),
        simulatePressure: true,
        isComplete: false,
      ),
    ),
  );

  /// 確定済みのペイント線。
  final ValueNotifier<List<PaintLine>> paintLines = ValueNotifier([]);

  /// 編集中のテキストアイテム。
  final ValueNotifier<RenderItem<DecorationText>> editingTextItem =
      ValueNotifier(
        RenderItem<DecorationText>(
          transform: Matrix4.identity(),
          data: DecorationText(
            fontFamily: FontType.notoSansJp.name,
            backgroundColorCode: Colors.black.hex,
            fontSize: 34,
            colorCode: Colors.white.hex,
            textAlign: TextAlign.left.name,
          ),
          uuid: null,
          order: 0,
        ),
      );

  // --- テーマ -------------------------------------------------------------

  final ValueNotifier<ThemeMode> _themeMode = ValueNotifier(ThemeMode.dark);

  /// 背景画像から導出されるテーマモード。背景画像が変わったときのみ更新される。
  ValueListenable<ThemeMode> get themeMode => _themeMode;

  /// 最後にテーマ判定に使った背景画像のパス。
  ///
  /// [decorationPalette] はアイテムの移動・追加・削除のたびに更新されるが、
  /// 輝度計算が必要なのは背景画像そのものが変わったときだけなので、
  /// パスが同じ間は再計算をスキップする。
  String? _themeSourcePath;

  bool _disposed = false;

  void _recomputeThemeMode() {
    final backgroundImageFile =
        decorationPalette.value.backgroundImage?.data.backgroundImageFile;
    final path = backgroundImageFile?.path;
    if (path == _themeSourcePath) {
      return;
    }
    _themeSourcePath = path;

    if (backgroundImageFile == null) {
      _themeMode.value = ThemeMode.dark;
      return;
    }

    getThemeFromImage(backgroundImageFile).then((mode) {
      // 計算中に背景画像が差し替わっていたら結果を破棄する
      if (_disposed || _themeSourcePath != path) {
        return;
      }
      _themeMode.value = mode;
    });
  }

  ThemeData get editorTheme => _themeMode.value == ThemeMode.dark
      ? themeDataDto.themeDark
      : themeDataDto.themeLight;

  ThemeData get footerTheme => _themeMode.value == ThemeMode.dark
      ? themeDataDto.footerThemeDark
      : themeDataDto.footerThemeLight;

  ThemeData get paintingTheme => _themeMode.value == ThemeMode.dark
      ? themeDataDto.paintThemeDark
      : themeDataDto.paintThemeLight;

  ThemeData get decoratingTheme => _themeMode.value == ThemeMode.dark
      ? themeDataDto.paletteThemeDark
      : themeDataDto.paletteThemeLight;

  // --- Palette ------------------------------------------------------------

  void changeEditingText(bool isEditingText) {
    palette.value = palette.value.copyWith(isEditingText: isEditingText);
  }

  void changeMovingItem(bool isMovingItem) {
    palette.value = palette.value.copyWith(isMovingItem: isMovingItem);
  }

  void changePainting(bool isPainting) {
    palette.value = palette.value.copyWith(isPainting: isPainting);
  }

  // --- DecorationPalette --------------------------------------------------

  DecorationPalette get _decoration => decorationPalette.value;

  /// 履歴の最大保持数。
  ///
  /// 履歴は操作のたびにリストのコピーを積み上げるため、無制限にすると
  /// メモリ使用量とコピーコストが単調に増え続ける。
  static const int _maxHistoryLength = 50;

  List<List<RenderItem<DecorationItem>>> _capHistory(
    List<List<RenderItem<DecorationItem>>> history,
  ) {
    if (history.length <= _maxHistoryLength) {
      return history;
    }
    return history.sublist(0, _maxHistoryLength);
  }

  void initHistoryRenderItem(
    List<List<RenderItem<DecorationItem>>> initHistoryRenderItem,
  ) {
    decorationPalette.value = _decoration.copyWith(
      historyRenderItems: initHistoryRenderItem,
    );
  }

  void addRenderItem(RenderItem<DecorationItem> renderItem) {
    final uuid = const Uuid().v4();
    final newRenderItem = renderItem.copyWith(uuid: uuid);
    decorationPalette.value = _decoration.copyWith(
      historyRenderItems: _capHistory([
        [
          ..._decoration.historyRenderItems[_decoration.currentHistoryIndex],
          newRenderItem,
        ],
        ..._decoration.historyRenderItems,
      ]),
      currentHistoryIndex: 0,
    );

    changeEditingText(false);
  }

  /// DecorationItemの更新
  void updateRenderItem(RenderItem<DecorationItem> renderItem) {
    final currentItems =
        _decoration.historyRenderItems[_decoration.currentHistoryIndex];
    decorationPalette.value = _decoration.copyWith(
      historyRenderItems: _capHistory([
        currentItems
            .map((item) => item.uuid == renderItem.uuid ? renderItem : item)
            .toList(),
        ..._decoration.historyRenderItems,
      ]),
      currentHistoryIndex: 0,
    );

    changeEditingText(false);
  }

  /// 背景画像の移動
  void moveBackgroundImage({
    required Matrix4 transform,
    required String? uuid,
  }) {
    final currentItems =
        _decoration.historyRenderItems[_decoration.currentHistoryIndex];
    final updatedRenderItems = currentItems.map((item) {
      if (item.uuid == uuid) {
        return item.copyWith(transform: transform);
      }
      return item;
    }).toList();

    if (_decoration.isShowingHistory) {
      decorationPalette.value = _decoration.copyWith(
        historyRenderItems: _capHistory([
          updatedRenderItems,
          ..._decoration.historyRenderItems.sublist(
            _decoration.currentHistoryIndex,
          ),
        ]),
        currentHistoryIndex: 0,
      );
    } else {
      decorationPalette.value = _decoration.copyWith(
        historyRenderItems: _capHistory([
          updatedRenderItems,
          ..._decoration.historyRenderItems,
        ]),
        currentHistoryIndex: 0,
      );
    }
    changeMovingItem(false);
  }

  /// RenderItemの移動
  void moveRenderItem(RenderItem<DecorationItem> renderItem) {
    final currentItems =
        _decoration.historyRenderItems[_decoration.currentHistoryIndex];
    final updatedRenderItems = currentItems
        .map((item) => item.uuid == renderItem.uuid ? renderItem : item)
        .toList();

    if (_decoration.isShowingHistory) {
      decorationPalette.value = _decoration.copyWith(
        historyRenderItems: _capHistory([
          updatedRenderItems,
          ..._decoration.historyRenderItems.sublist(
            _decoration.currentHistoryIndex,
          ),
        ]),
        currentHistoryIndex: 0,
      );
    } else {
      decorationPalette.value = _decoration.copyWith(
        historyRenderItems: _capHistory([
          updatedRenderItems,
          ..._decoration.historyRenderItems,
        ]),
        currentHistoryIndex: 0,
      );
    }
    changeMovingItem(false);
  }

  void removeRenderItem(String renderItemId) {
    final currentItems =
        _decoration.historyRenderItems[_decoration.currentHistoryIndex];
    decorationPalette.value = _decoration.copyWith(
      historyRenderItems: _capHistory([
        currentItems.where((item) => item.uuid != renderItemId).toList(),
        ..._decoration.historyRenderItems,
      ]),
      currentHistoryIndex: 0,
    );
    changeMovingItem(false);
  }

  void backHistory() {
    if (_decoration.canBack) {
      decorationPalette.value = _decoration.copyWith(
        currentHistoryIndex: _decoration.currentHistoryIndex + 1,
      );
    }
  }

  void nextHistory() {
    if (_decoration.canNext) {
      decorationPalette.value = _decoration.copyWith(
        currentHistoryIndex: _decoration.currentHistoryIndex - 1,
      );
    }
  }

  void changeDeletePosition(String uuid, bool isDeletePosition) {
    final currentItems =
        _decoration.historyRenderItems[_decoration.currentHistoryIndex];
    decorationPalette.value = _decoration.copyWith(
      historyRenderItems: _capHistory([
        currentItems
            .map(
              (item) => item.uuid == uuid
                  ? item.copyWith(deletePosition: isDeletePosition)
                  : item,
            )
            .toList(),
        ..._decoration.historyRenderItems,
      ]),
      currentHistoryIndex: 0,
    );
  }

  // --- PaintPalette -------------------------------------------------------

  void changeBrushType(BrushType brushType) {
    paintPalette.value = paintPalette.value.copyWith(brushType: brushType);
  }

  void changeColor(Color color) {
    paintPalette.value = paintPalette.value.copyWith(color: color);
  }

  void changeStrokeOptions(StrokeOptions strokeOptions) {
    paintPalette.value = paintPalette.value.copyWith(
      strokeOptions: strokeOptions,
    );
  }

  // --- PaintLines ---------------------------------------------------------

  void addLine(PaintLine line) {
    paintLines.value = [...paintLines.value, line];
  }

  void deleteLine() {
    paintLines.value = paintLines.value.sublist(0, paintLines.value.length - 1);
  }

  void clearLines() {
    paintLines.value = [];
  }

  // --- EditingTextItem ----------------------------------------------------

  DecorationText get _editingText => editingTextItem.value.data;

  void setEditingTextItem(RenderItem<DecorationText> renderItem) {
    editingTextItem.value = renderItem;
  }

  void _updateEditingText(
    DecorationText Function(DecorationText current) updater,
  ) {
    editingTextItem.value = editingTextItem.value.copyWith(
      data: updater(_editingText),
    );
  }

  void changeTextAlign() {
    final newAlignment = _editingText.textAlign == TextAlign.left.name
        ? TextAlign.right
        : TextAlign.left;
    _updateEditingText((data) => data.copyWith(textAlign: newAlignment.name));
  }

  void changeFillColor() {
    final newBackgroundColor =
        _editingText.backgroundColorCode.toColor == Colors.black
        ? Colors.white
        : Colors.black;
    _updateEditingText(
      (data) => data.copyWith(backgroundColorCode: newBackgroundColor.hex),
    );
  }

  void changeFontSize(double fontSize) {
    _updateEditingText((data) => data.copyWith(fontSize: fontSize));
  }

  void changeText(String text) {
    _updateEditingText((data) => data.copyWith(text: text));
  }

  void changeTextColor(Color color) {
    _updateEditingText((data) => data.copyWith(colorCode: color.hex));
  }

  void changeFontFamily(String fontFamily) {
    _updateEditingText((data) => data.copyWith(fontFamily: fontFamily));
  }

  void resetEditingText() {
    editingTextItem.value = RenderItem<DecorationText>(
      transform: Matrix4.identity(),
      data: DecorationText(
        fontFamily: FontType.notoSansJp.name,
        backgroundColorCode: Colors.black.hex,
        fontSize: 34,
        colorCode: Colors.white.hex,
        textAlign: TextAlign.left.name,
      ),
      uuid: null,
      order: 0,
    );
  }

  // --- 画像エクスポート ---------------------------------------------------

  /// 現在の描画領域を PNG バイト列としてエクスポートする。
  Future<Uint8List?> exportImage() async {
    final boundary =
        paletteKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) {
      return null;
    }

    // デバイスのピクセル密度を取得して高解像度で画像を生成
    final context = paletteKey.currentContext;
    final pixelRatio = context != null
        ? MediaQuery.of(context).devicePixelRatio
        : 2.0; // フォールバック値として2.0を使用

    final image = await boundary.toImage(pixelRatio: pixelRatio);
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  void dispose() {
    _disposed = true;
    decorationPalette.removeListener(_recomputeThemeMode);
    palette.dispose();
    decorationPalette.dispose();
    paintPalette.dispose();
    paintLines.dispose();
    editingTextItem.dispose();
    _themeMode.dispose();
  }
}
