// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_blur_hash.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchBlurHash)
const fetchBlurHashProvider = FetchBlurHashFamily._();

final class FetchBlurHashProvider
    extends
        $FunctionalProvider<AsyncValue<BlurHash>, BlurHash, FutureOr<BlurHash>>
    with $FutureModifier<BlurHash>, $FutureProvider<BlurHash> {
  const FetchBlurHashProvider._({
    required FetchBlurHashFamily super.from,
    required File super.argument,
  }) : super(
         retry: null,
         name: r'fetchBlurHashProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchBlurHashHash();

  @override
  String toString() {
    return r'fetchBlurHashProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<BlurHash> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<BlurHash> create(Ref ref) {
    final argument = this.argument as File;
    return fetchBlurHash(ref, file: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchBlurHashProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchBlurHashHash() => r'3138156dc7bb4a2cb3678790398b489db0f62717';

final class FetchBlurHashFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<BlurHash>, File> {
  const FetchBlurHashFamily._()
    : super(
        retry: null,
        name: r'fetchBlurHashProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchBlurHashProvider call({required File file}) =>
      FetchBlurHashProvider._(argument: file, from: this);

  @override
  String toString() => r'fetchBlurHashProvider';
}
