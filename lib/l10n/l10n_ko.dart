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

  @override
  String get export_failure => '이미지 내보내기에 실패했습니다.';

  @override
  String get export_success => '이미지가 성공적으로 내보내졌습니다.';
}
