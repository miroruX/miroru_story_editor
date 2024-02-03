import 'l10n.dart';

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
}
