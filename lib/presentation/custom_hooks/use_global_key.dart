import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

GlobalKey useGlobalKey({
  String? debugLabel,
}) {
  return useState(
    GlobalKey(
      debugLabel: debugLabel,
    ),
  ).value;
}
