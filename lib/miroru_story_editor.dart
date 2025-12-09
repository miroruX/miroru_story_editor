import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/l10n/l10n.dart';
import 'package:miroru_story_editor/model/entities/theme/theme_data_dto.dart';
import 'package:miroru_story_editor/model/enums/language_type.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/theme_data_dto.dart';
import 'package:miroru_story_editor/presentation/pages/palette_page.dart';

Future<Uint8List?> showMiroruStoryEditor(
  BuildContext context, {
  required File imageFile,
  ThemeDataDto? themeDataDto,
  LanguageType languageType = LanguageType.en,
}) {
  return Navigator.of(context).push<Uint8List?>(
    MaterialPageRoute(
      builder: (context) {
        return ProviderScope(
          overrides: [
            if (themeDataDto != null)
              themeDataDtoProvider.overrideWithValue(themeDataDto),
          ],
          child: Localizations(
            locale: Locale(languageType.name),
            delegates: L10n.localizationsDelegates,
            child: PalettePage(
              backgroundImageFile: imageFile,
            ),
          ),
        );
      },
    ),
  );
}
