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
class FetchBlurHashFamily extends Family<AsyncValue<BlurHash>> {
  /// See also [fetchBlurHash].
  const FetchBlurHashFamily();

  /// See also [fetchBlurHash].
  FetchBlurHashProvider call({
    required File file,
  }) {
    return FetchBlurHashProvider(
      file: file,
    );
  }

  @override
  FetchBlurHashProvider getProviderOverride(
    covariant FetchBlurHashProvider provider,
  ) {
    return call(
      file: provider.file,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchBlurHashProvider';
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
    super._createNotifier, {
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
    FutureOr<BlurHash> Function(FetchBlurHashRef provider) create,
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
  AutoDisposeFutureProviderElement<BlurHash> createElement() {
    return _FetchBlurHashProviderElement(this);
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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
