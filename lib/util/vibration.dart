import 'package:flutter/services.dart';

class Vibration {
  Vibration._();
  static Future<void> call() => HapticFeedback.lightImpact();
  static Future<void> click() => HapticFeedback.selectionClick();
}
