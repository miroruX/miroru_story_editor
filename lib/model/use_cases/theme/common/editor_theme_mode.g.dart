// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_theme_mode.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditorThemeMode)
const editorThemeModeProvider = EditorThemeModeProvider._();

final class EditorThemeModeProvider
    extends $NotifierProvider<EditorThemeMode, ThemeMode> {
  const EditorThemeModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editorThemeModeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editorThemeModeHash();

  @$internal
  @override
  EditorThemeMode create() => EditorThemeMode();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$editorThemeModeHash() => r'6031f33be5cfa58f234d7cc1ce1b201f80f58f77';

abstract class _$EditorThemeMode extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
