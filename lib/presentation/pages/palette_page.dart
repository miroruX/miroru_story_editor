import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/model/entities/decoration/decorations/background_image/background_image.dart';
import 'package:miroru_story_editor/model/entities/decoration/render_item/render_item.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/presentation/views/palette/footer_view.dart';
import 'package:miroru_story_editor/presentation/views/palette/palette_view.dart';
import 'package:uuid/uuid.dart';

class PalettePage extends HookWidget {
  const PalettePage({super.key, required this.backgroundImageFile});
  final File backgroundImageFile;

  @override
  Widget build(BuildContext context) {
    final controller = EditorScope.of(context);
    // themeMode が切り替わったらエディタ全体のテーマを再評価する
    useValueListenable(controller.themeMode);
    final themeData = controller.editorTheme;

    useEffect(() {
      Future.microtask(
        () => controller.initHistoryRenderItem([
          [
            RenderItem<DecorationBackgroundImage>(
              transform: Matrix4.identity(),
              data: DecorationBackgroundImage(
                backgroundImageFile: backgroundImageFile,
              ),
              uuid: const Uuid().v4(),
              order: 0,
            ),
          ],
        ]),
      );
      // エディターを閉じる際の状態リセットは EditorScope による
      // EditorController の破棄で行われる。
      return null;
    }, []);
    return PopScope(
      canPop: false,
      child: Theme(
        data: themeData,
        child: Scaffold(
          body: SafeArea(
            child: PaletteView(backgroundImageFile: backgroundImageFile),
          ),
          bottomNavigationBar: const SafeArea(
            child: Padding(padding: EdgeInsets.all(6), child: FooterView()),
          ),
        ),
      ),
    );
  }
}
