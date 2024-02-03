import 'l10n.dart';

/// The translations for Hindi (`hi`).
class L10nHi extends L10n {
  L10nHi([String locale = 'hi']) : super(locale);

  @override
  String get draw => 'ड्रॉ';

  @override
  String get save => 'सहेजें';

  @override
  String get done => 'समाप्त';

  @override
  String get undo => 'पूर्ववत करें';
}
