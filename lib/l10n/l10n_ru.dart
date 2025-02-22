// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class L10nRu extends L10n {
  L10nRu([String locale = 'ru']) : super(locale);

  @override
  String get draw => 'Рисовать';

  @override
  String get save => 'Сохранить';

  @override
  String get done => 'Готово';

  @override
  String get undo => 'Отменить';

  @override
  String get export_failure => 'Не удалось экспортировать изображение. Пожалуйста, попробуйте еще раз.';

  @override
  String get export_success => 'Изображение успешно экспортировано.';
}
