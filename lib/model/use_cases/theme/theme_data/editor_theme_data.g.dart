// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_theme_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditorThemeData)
const editorThemeDataProvider = EditorThemeDataProvider._();

final class EditorThemeDataProvider
    extends $NotifierProvider<EditorThemeData, ThemeData> {
  const EditorThemeDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editorThemeDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editorThemeDataHash();

  @$internal
  @override
  EditorThemeData create() => EditorThemeData();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }
}

String _$editorThemeDataHash() => r'd76d850ae3855ad9563e4e5795c0cc4d516d1eea';

abstract class _$EditorThemeData extends $Notifier<ThemeData> {
  ThemeData build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeData, ThemeData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeData, ThemeData>,
              ThemeData,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
