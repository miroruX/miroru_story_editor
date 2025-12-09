// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_image.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(saveImage)
const saveImageProvider = SaveImageFamily._();

final class SaveImageProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const SaveImageProvider._({
    required SaveImageFamily super.from,
    required Uint8List super.argument,
  }) : super(
         retry: null,
         name: r'saveImageProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$saveImageHash();

  @override
  String toString() {
    return r'saveImageProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as Uint8List;
    return saveImage(ref, imageBytes: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveImageProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$saveImageHash() => r'cae76ce8d1a827eaec48369c1b8e3e53d5d1c414';

final class SaveImageFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, Uint8List> {
  const SaveImageFamily._()
    : super(
        retry: null,
        name: r'saveImageProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SaveImageProvider call({required Uint8List imageBytes}) =>
      SaveImageProvider._(argument: imageBytes, from: this);

  @override
  String toString() => r'saveImageProvider';
}
