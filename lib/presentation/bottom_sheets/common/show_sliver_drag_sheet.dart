import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

Future<T?> showSliverDragSheet<T>(
  BuildContext context, {
  required List<Widget> slivers,
  double initialChildSize = 0.5,
  double maxChildSize = 1,
}) {
  return showModalBottomSheet<T?>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    useRootNavigator: true,
    showDragHandle: true,
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
            builder: (BuildContext context) {
              return CustomScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
                    sliver: MultiSliver(children: slivers),
                  ),
                ],
              );
            },
          );
        },
      );
    },
  );
}
