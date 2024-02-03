import 'l10n.dart';

/// The translations for Korean (`ko`).
class L10nKo extends L10n {
  L10nKo([String locale = 'ko']) : super(locale);

  @override
  String get draw => '그리기';

  @override
  String get save => '저장';

  @override
  String get done => '완료';

  @override
  String get undo => '취소';
}
