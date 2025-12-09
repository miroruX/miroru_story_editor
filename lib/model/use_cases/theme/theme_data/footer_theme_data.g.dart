// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'footer_theme_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FooterThemeData)
const footerThemeDataProvider = FooterThemeDataProvider._();

final class FooterThemeDataProvider
    extends $NotifierProvider<FooterThemeData, ThemeData> {
  const FooterThemeDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'footerThemeDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$footerThemeDataHash();

  @$internal
  @override
  FooterThemeData create() => FooterThemeData();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }
}

String _$footerThemeDataHash() => r'71fccdcf7ad825d9fa40c15be5ff531e019b00e5';

abstract class _$FooterThemeData extends $Notifier<ThemeData> {
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
