import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:miroru_story_editor/presentation/pages/palette_page.dart';

Future<Uint8List?> showMiroruStoryEditor(
  BuildContext context, {
  required File imageFile,
}) async {
  return Navigator.of(context).push<Uint8List?>(
    MaterialPageRoute(
      builder: (context) {
        return ProviderScope(
          child: PalettePage(
            backgroundImageFile: imageFile,
          ),
        );
      },
    ),
  );
}
