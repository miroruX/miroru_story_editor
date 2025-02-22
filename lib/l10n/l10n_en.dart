// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get draw => 'Draw';

  @override
  String get save => 'Save';

  @override
  String get done => 'Done';

  @override
  String get undo => 'Undo';

  @override
  String get export_failure => 'Failed to export image.';

  @override
  String get export_success => 'Image exported successfully.';
}
