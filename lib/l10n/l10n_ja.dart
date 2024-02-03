import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get draw => '落書き';

  @override
  String get save => '保存';

  @override
  String get done => '完了';

  @override
  String get undo => '元に戻す';
}
