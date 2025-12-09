// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'painting_theme_dart.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaintingThemeData)
const paintingThemeDataProvider = PaintingThemeDataProvider._();

final class PaintingThemeDataProvider
    extends $NotifierProvider<PaintingThemeData, ThemeData> {
  const PaintingThemeDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paintingThemeDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paintingThemeDataHash();

  @$internal
  @override
  PaintingThemeData create() => PaintingThemeData();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }
}

String _$paintingThemeDataHash() => r'039ef6720c4963b54899b2302250399612a6a265';

abstract class _$PaintingThemeData extends $Notifier<ThemeData> {
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
