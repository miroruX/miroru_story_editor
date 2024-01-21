import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DecorationView extends HookWidget {
  const DecorationView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return const SizedBox();
      },
    );
  }
}
