// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_data_dto.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(themeDataDto)
const themeDataDtoProvider = ThemeDataDtoProvider._();

final class ThemeDataDtoProvider
    extends $FunctionalProvider<ThemeDataDto, ThemeDataDto, ThemeDataDto>
    with $Provider<ThemeDataDto> {
  const ThemeDataDtoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeDataDtoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeDataDtoHash();

  @$internal
  @override
  $ProviderElement<ThemeDataDto> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeDataDto create(Ref ref) {
    return themeDataDto(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeDataDto value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeDataDto>(value),
    );
  }
}

String _$themeDataDtoHash() => r'c0bfb93edded77750605b20e6996bc1339347140';
