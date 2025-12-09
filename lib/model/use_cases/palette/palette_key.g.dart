// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palette_key.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(paletteKey)
const paletteKeyProvider = PaletteKeyProvider._();

final class PaletteKeyProvider
    extends
        $FunctionalProvider<
          GlobalKey<State<StatefulWidget>>,
          GlobalKey<State<StatefulWidget>>,
          GlobalKey<State<StatefulWidget>>
        >
    with $Provider<GlobalKey<State<StatefulWidget>>> {
  const PaletteKeyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paletteKeyProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paletteKeyHash();

  @$internal
  @override
  $ProviderElement<GlobalKey<State<StatefulWidget>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GlobalKey<State<StatefulWidget>> create(Ref ref) {
    return paletteKey(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GlobalKey<State<StatefulWidget>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GlobalKey<State<StatefulWidget>>>(
        value,
      ),
    );
  }
}

String _$paletteKeyHash() => r'799ec3838e531cff5ee956888aea486032c731ee';
