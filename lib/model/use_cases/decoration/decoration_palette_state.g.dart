// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoration_palette_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DecorationPaletteState)
const decorationPaletteStateProvider = DecorationPaletteStateProvider._();

final class DecorationPaletteStateProvider
    extends $NotifierProvider<DecorationPaletteState, DecorationPalette> {
  const DecorationPaletteStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'decorationPaletteStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$decorationPaletteStateHash();

  @$internal
  @override
  DecorationPaletteState create() => DecorationPaletteState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DecorationPalette value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DecorationPalette>(value),
    );
  }
}

String _$decorationPaletteStateHash() =>
    r'5fc7a34e37a9d1f48b844fb1eeaddfdcddce19a2';

abstract class _$DecorationPaletteState extends $Notifier<DecorationPalette> {
  DecorationPalette build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DecorationPalette, DecorationPalette>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DecorationPalette, DecorationPalette>,
              DecorationPalette,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
