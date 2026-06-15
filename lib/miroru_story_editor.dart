import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:miroru_story_editor/l10n/l10n.dart';
import 'package:miroru_story_editor/model/entities/theme/theme_data_dto.dart';
import 'package:miroru_story_editor/model/enums/language_type.dart';
import 'package:miroru_story_editor/presentation/editor_scope.dart';
import 'package:miroru_story_editor/presentation/pages/palette_page.dart';

Future<Uint8List?> showMiroruStoryEditor(
  BuildContext context, {
  required File imageFile,
  ThemeDataDto? themeDataDto,
  LanguageType languageType = LanguageType.en,
}) {
  return Navigator.of(context, rootNavigator: true).push<Uint8List?>(
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (context) {
        return EditorScope(
          themeDataDto: themeDataDto ?? ThemeDataDto(),
          child: Localizations(
            locale: Locale(languageType.name),
            delegates: L10n.localizationsDelegates,
            child: PalettePage(backgroundImageFile: imageFile),
          ),
        );
      },
    ),
  );
}
