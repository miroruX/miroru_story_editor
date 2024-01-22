import 'package:miroru_story_editor/model/entities/decorations/decoration_item.dart';
import 'package:miroru_story_editor/model/entities/render_item/render_item.dart';

sealed class PaletteAction {}

class ChangeEditText implements PaletteAction {
  ChangeEditText(this.isEditingText);
  final bool isEditingText;
}

class ChangeMovingItem implements PaletteAction {
  ChangeMovingItem(this.isMovingItem);
  final bool isMovingItem;
}

class AddRenderItem implements PaletteAction {
  AddRenderItem(this.renderItem);
  final RenderItem<DecorationItem> renderItem;
}

class RemoveRenderItem implements PaletteAction {
  RemoveRenderItem(this.renderItemId);
  final String renderItemId;
}

class MoveRenderItem implements PaletteAction {
  MoveRenderItem(this.renderItem);
  final RenderItem renderItem;
}

class BackHistory implements PaletteAction {}

class ForwardHistory implements PaletteAction {}

class ResetAction extends PaletteAction {}
