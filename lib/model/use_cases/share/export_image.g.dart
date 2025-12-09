// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_image.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(exportImage)
const exportImageProvider = ExportImageProvider._();

final class ExportImageProvider
    extends
        $FunctionalProvider<
          AsyncValue<Uint8List?>,
          Uint8List?,
          FutureOr<Uint8List?>
        >
    with $FutureModifier<Uint8List?>, $FutureProvider<Uint8List?> {
  const ExportImageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'exportImageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$exportImageHash();

  @$internal
  @override
  $FutureProviderElement<Uint8List?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Uint8List?> create(Ref ref) {
    return exportImage(ref);
  }
}

String _$exportImageHash() => r'0e74a273da6ebdade34d38cf2a9e5e3db2586069';
