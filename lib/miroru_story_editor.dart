import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/model/entities/theme/theme_data_dto.dart';
import 'package:miroru_story_editor/model/use_cases/theme/common/theme_data_dto.dart';
import 'package:miroru_story_editor/presentation/pages/palette_page.dart';

Future<Uint8List?> showMiroruStoryEditor(
  BuildContext context, {
  required File imageFile,
  ThemeDataDto? themeDataDto,
}) async {
  return Navigator.of(context).push<Uint8List?>(
    MaterialPageRoute(
      builder: (context) {
        return ProviderScope(
          overrides: [
            if (themeDataDto != null)
              themeDataDtoProvider.overrideWithValue(themeDataDto),
          ],
          child: PalettePage(
            backgroundImageFile: imageFile,
          ),
        );
      },
    ),
  );
}
