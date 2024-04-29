// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_image.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saveImageHash() => r'eb1d6d5bd0ecf0aed9c7aa2bd3e1450d546aab81';

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

/// See also [saveImage].
@ProviderFor(saveImage)
const saveImageProvider = SaveImageFamily();

/// See also [saveImage].
class SaveImageFamily extends Family<AsyncValue<void>> {
  /// See also [saveImage].
  const SaveImageFamily();

  /// See also [saveImage].
  SaveImageProvider call({
    required Uint8List imageBytes,
  }) {
    return SaveImageProvider(
      imageBytes: imageBytes,
    );
  }

  @override
  SaveImageProvider getProviderOverride(
    covariant SaveImageProvider provider,
  ) {
    return call(
      imageBytes: provider.imageBytes,
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
  String? get name => r'saveImageProvider';
}

/// See also [saveImage].
class SaveImageProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveImage].
  SaveImageProvider({
    required Uint8List imageBytes,
  }) : this._internal(
          (ref) => saveImage(
            ref as SaveImageRef,
            imageBytes: imageBytes,
          ),
          from: saveImageProvider,
          name: r'saveImageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveImageHash,
          dependencies: SaveImageFamily._dependencies,
          allTransitiveDependencies: SaveImageFamily._allTransitiveDependencies,
          imageBytes: imageBytes,
        );

  SaveImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageBytes,
  }) : super.internal();

  final Uint8List imageBytes;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveImageProvider._internal(
        (ref) => create(ref as SaveImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageBytes: imageBytes,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveImageProvider && other.imageBytes == imageBytes;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageBytes.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveImageRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `imageBytes` of this provider.
  Uint8List get imageBytes;
}

class _SaveImageProviderElement extends AutoDisposeFutureProviderElement<void>
    with SaveImageRef {
  _SaveImageProviderElement(super.provider);

  @override
  Uint8List get imageBytes => (origin as SaveImageProvider).imageBytes;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
