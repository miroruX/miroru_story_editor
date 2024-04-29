import 'l10n.dart';

/// The translations for Chinese (`zh`).
class L10nZh extends L10n {
  L10nZh([String locale = 'zh']) : super(locale);

  @override
  String get draw => '绘画';

  @override
  String get save => '保存';

  @override
  String get done => '完成';

  @override
  String get undo => '撤销';

  @override
  String get export_failure => '导出失败。';

  @override
  String get export_success => '导出成功。';
}
