// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editing_text_item_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditingTextItemState)
const editingTextItemStateProvider = EditingTextItemStateProvider._();

final class EditingTextItemStateProvider
    extends
        $NotifierProvider<EditingTextItemState, RenderItem<DecorationText>> {
  const EditingTextItemStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editingTextItemStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editingTextItemStateHash();

  @$internal
  @override
  EditingTextItemState create() => EditingTextItemState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RenderItem<DecorationText> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RenderItem<DecorationText>>(value),
    );
  }
}

String _$editingTextItemStateHash() =>
    r'3fec478652d48ca8fffca632f073a512b07099b6';

abstract class _$EditingTextItemState
    extends $Notifier<RenderItem<DecorationText>> {
  RenderItem<DecorationText> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<RenderItem<DecorationText>, RenderItem<DecorationText>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                RenderItem<DecorationText>,
                RenderItem<DecorationText>
              >,
              RenderItem<DecorationText>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
