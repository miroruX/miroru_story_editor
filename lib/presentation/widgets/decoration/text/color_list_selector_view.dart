import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:miroru_story_editor/extensions/context_extension.dart';

class ColorListSelectorWidget extends HookWidget {
  const ColorListSelectorWidget({
    super.key,
    required this.onChangeColor,
  });

  final void Function(Color color) onChangeColor;

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
      Colors.white,
      Colors.black,
    ];
    final tabController = useTabController(initialLength: colors.length);

    useEffect(
      () {
        tabController.addListener(() {
          onChangeColor(colors[tabController.index]);
        });
        return null;
      },
      [],
    );

    return SizedBox(
      height: 40,
      width: context.deviceWidth,
      child: TabBar(
        isScrollable: true,
        controller: tabController,
        tabs: colors
            .map(
              (color) => ClipOval(
                child: ColoredBox(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      backgroundColor: color,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
