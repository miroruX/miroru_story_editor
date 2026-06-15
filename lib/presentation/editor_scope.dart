import 'package:flutter/material.dart';
import 'package:miroru_story_editor/model/entities/theme/theme_data_dto.dart';
import 'package:miroru_story_editor/presentation/editor_controller.dart';

/// [EditorController] を生成・破棄し、ツリーに供給するスコープ。
///
/// Riverpod の `ProviderScope` の代替。`EditorScope.of(context)` で
/// コントローラーを取得する。
class EditorScope extends StatefulWidget {
  const EditorScope({
    super.key,
    required this.themeDataDto,
    required this.child,
  });

  final ThemeDataDto themeDataDto;
  final Widget child;

  /// 最寄りの [EditorController] を取得する。
  static EditorController of(BuildContext context) {
    final scope = context
        .dependOnInheritedWidgetOfExactType<_EditorScopeProvider>();
    assert(scope != null, 'EditorScope was not found in the widget tree.');
    return scope!.controller;
  }

  @override
  State<EditorScope> createState() => _EditorScopeState();
}

class _EditorScopeState extends State<EditorScope> {
  late final EditorController _controller = EditorController(
    themeDataDto: widget.themeDataDto,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _EditorScopeProvider(controller: _controller, child: widget.child);
  }
}

class _EditorScopeProvider extends InheritedWidget {
  const _EditorScopeProvider({required this.controller, required super.child});

  final EditorController controller;

  @override
  bool updateShouldNotify(_EditorScopeProvider oldWidget) =>
      controller != oldWidget.controller;
}
