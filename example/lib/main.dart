import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:miroru_story_editor/miroru_story_editor.dart';
import 'package:permission_handler/permission_handler.dart'; // あなたのライブラリをインポート

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メインページ'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () async {
            if (Platform.isAndroid) {
              final deviceInfo = DeviceInfoPlugin();
              final androidInfo = await deviceInfo.androidInfo;
              if (androidInfo.version.sdkInt >= 33) {
                await Permission.photos.request();
              } else {
                await Permission.storage.request();
              }
            } else {
              await Permission.photos.request();
            }

            final file = await ImagePicker().pickImage(
              source: ImageSource.gallery,
            );
            if (file == null) {
              return;
            }

            if (!context.mounted) {
              return;
            }

            await showMiroruStoryEditor(
              context,
              imageFile: File(file.path),
            );
          },
          child: const Text('ストーリーエディタを開く'),
        ),
      ),
    );
  }
}
