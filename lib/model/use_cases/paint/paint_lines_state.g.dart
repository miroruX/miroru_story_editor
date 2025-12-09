// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paint_lines_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaintLinesState)
const paintLinesStateProvider = PaintLinesStateProvider._();

final class PaintLinesStateProvider
    extends $NotifierProvider<PaintLinesState, List<PaintLine>> {
  const PaintLinesStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paintLinesStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paintLinesStateHash();

  @$internal
  @override
  PaintLinesState create() => PaintLinesState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<PaintLine> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<PaintLine>>(value),
    );
  }
}

String _$paintLinesStateHash() => r'4331108a6775a4e75f5273aae62a4b08f4d45892';

abstract class _$PaintLinesState extends $Notifier<List<PaintLine>> {
  List<PaintLine> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<PaintLine>, List<PaintLine>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<PaintLine>, List<PaintLine>>,
              List<PaintLine>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
