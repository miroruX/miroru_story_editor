// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decorating_theme_data.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DecoratingThemeData)
const decoratingThemeDataProvider = DecoratingThemeDataProvider._();

final class DecoratingThemeDataProvider
    extends $NotifierProvider<DecoratingThemeData, ThemeData> {
  const DecoratingThemeDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'decoratingThemeDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$decoratingThemeDataHash();

  @$internal
  @override
  DecoratingThemeData create() => DecoratingThemeData();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }
}

String _$decoratingThemeDataHash() =>
    r'0830c961d066e4465958e546a40c263e9e05fd04';

abstract class _$DecoratingThemeData extends $Notifier<ThemeData> {
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
