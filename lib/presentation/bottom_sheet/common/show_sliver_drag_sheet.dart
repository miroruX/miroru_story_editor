import 'package:flutter/material.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';
import 'package:sliver_tools/sliver_tools.dart';

Future<T?> showSliverDragSheet<T>(
  BuildContext context, {
  required List<Widget> slivers,
  double initialChildSize = 0.5,
  double maxChildSize = 1,
}) async {
  return showModalBottomSheet<T?>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    useRootNavigator: true,
    backgroundColor: context.scaffoldBackgroundColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
    builder: (context) {
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: initialChildSize,
        maxChildSize: maxChildSize,
        builder: (BuildContext context, scrollController) {
          return BottomSheet(
            onClosing: () {},
            backgroundColor: context.scaffoldBackgroundColor,
            builder: (BuildContext context) {
              return ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: ColoredBox(
                  color: context.scaffoldBackgroundColor,
                  child: CustomScrollView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverPinnedHeader(
                        child: ColoredBox(
                          color: context.scaffoldBackgroundColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                            ),
                            child: Divider(
                              thickness: 3,
                              indent: context.deviceWidth / 2 - 30,
                              endIndent: context.deviceWidth / 2 - 30,
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        sliver: MultiSliver(children: slivers),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      );
    },
  );
}
