// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

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

  @override
  String get export_failure => '画像の書き出しに失敗しました';

  @override
  String get export_success => '画像を書き出しました';
}
