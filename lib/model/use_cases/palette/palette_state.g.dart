// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palette_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaletteState)
const paletteStateProvider = PaletteStateProvider._();

final class PaletteStateProvider
    extends $NotifierProvider<PaletteState, Palette> {
  const PaletteStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paletteStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paletteStateHash();

  @$internal
  @override
  PaletteState create() => PaletteState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Palette value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Palette>(value),
    );
  }
}

String _$paletteStateHash() => r'b7b7546bb5f79c84e1bfd296e1fc4739ff4646f6';

abstract class _$PaletteState extends $Notifier<Palette> {
  Palette build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Palette, Palette>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Palette, Palette>,
              Palette,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
