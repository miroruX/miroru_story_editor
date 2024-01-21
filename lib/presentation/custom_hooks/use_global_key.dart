import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

GlobalKey useGlobalKey() {
  return useState(GlobalKey()).value;
}
