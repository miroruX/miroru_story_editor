import 'package:flutter/services.dart';

class Vibration {
  Vibration._();
  static Future<void> click() => HapticFeedback.selectionClick();
}
