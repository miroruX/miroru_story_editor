// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paint_palette_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaintPaletteState)
const paintPaletteStateProvider = PaintPaletteStateProvider._();

final class PaintPaletteStateProvider
    extends $NotifierProvider<PaintPaletteState, PaintPalette> {
  const PaintPaletteStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paintPaletteStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paintPaletteStateHash();

  @$internal
  @override
  PaintPaletteState create() => PaintPaletteState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PaintPalette value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PaintPalette>(value),
    );
  }
}

String _$paintPaletteStateHash() => r'04f5c30bc75df78614945976fbeea578c2b9b964';

abstract class _$PaintPaletteState extends $Notifier<PaintPalette> {
  PaintPalette build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PaintPalette, PaintPalette>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PaintPalette, PaintPalette>,
              PaintPalette,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
