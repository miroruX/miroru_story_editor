// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_blur_hash.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchBlurHashHash() => r'f4bbffcd1218c63987609b5dafdf3f07e1e1b3a8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchBlurHash].
@ProviderFor(fetchBlurHash)
const fetchBlurHashProvider = FetchBlurHashFamily();

/// See also [fetchBlurHash].
class FetchBlurHashFamily extends Family {
  /// See also [fetchBlurHash].
  const FetchBlurHashFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchBlurHashProvider';

  /// See also [fetchBlurHash].
  FetchBlurHashProvider call({
    required File file,
  }) {
    return FetchBlurHashProvider(
      file: file,
    );
  }

  @visibleForOverriding
  @override
  FetchBlurHashProvider getProviderOverride(
    covariant FetchBlurHashProvider provider,
  ) {
    return call(
      file: provider.file,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<BlurHash> Function(FetchBlurHashRef ref) create) {
    return _$FetchBlurHashFamilyOverride(this, create);
  }
}

class _$FetchBlurHashFamilyOverride implements FamilyOverride {
  _$FetchBlurHashFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<BlurHash> Function(FetchBlurHashRef ref) create;

  @override
  final FetchBlurHashFamily overriddenFamily;

  @override
  FetchBlurHashProvider getProviderOverride(
    covariant FetchBlurHashProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [fetchBlurHash].
class FetchBlurHashProvider extends AutoDisposeFutureProvider<BlurHash> {
  /// See also [fetchBlurHash].
  FetchBlurHashProvider({
    required File file,
  }) : this._internal(
          (ref) => fetchBlurHash(
            ref as FetchBlurHashRef,
            file: file,
          ),
          from: fetchBlurHashProvider,
          name: r'fetchBlurHashProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchBlurHashHash,
          dependencies: FetchBlurHashFamily._dependencies,
          allTransitiveDependencies:
              FetchBlurHashFamily._allTransitiveDependencies,
          file: file,
        );

  FetchBlurHashProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.file,
  }) : super.internal();

  final File file;

  @override
  Override overrideWith(
    FutureOr<BlurHash> Function(FetchBlurHashRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchBlurHashProvider._internal(
        (ref) => create(ref as FetchBlurHashRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        file: file,
      ),
    );
  }

  @override
  ({
    File file,
  }) get argument {
    return (file: file,);
  }

  @override
  AutoDisposeFutureProviderElement<BlurHash> createElement() {
    return _FetchBlurHashProviderElement(this);
  }

  FetchBlurHashProvider _copyWith(
    FutureOr<BlurHash> Function(FetchBlurHashRef ref) create,
  ) {
    return FetchBlurHashProvider._internal(
      (ref) => create(ref as FetchBlurHashRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      file: file,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FetchBlurHashProvider && other.file == file;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, file.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchBlurHashRef on AutoDisposeFutureProviderRef<BlurHash> {
  /// The parameter `file` of this provider.
  File get file;
}

class _FetchBlurHashProviderElement
    extends AutoDisposeFutureProviderElement<BlurHash> with FetchBlurHashRef {
  _FetchBlurHashProviderElement(super.provider);

  @override
  File get file => (origin as FetchBlurHashProvider).file;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
