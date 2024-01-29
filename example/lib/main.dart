import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:miroru_story_editor/miroru_story_editor.dart';
import 'package:permission_handler/permission_handler.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Uint8List? image;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('miroru story editor'),
      ),
      body: Column(
        children: [
          Expanded(
            child: image != null
                ? Image.memory(image!)
                : Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/miroru_girl.png'),
                        ),
                      ],
                    ),
                  ),
          ),
          Center(
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

                final imageData = await showMiroruStoryEditor(
                  context,
                  imageFile: File(file.path),
                );

                if (imageData == null) {
                  return;
                }

                setState(() {
                  image = imageData;
                });
              },
              child: const Text('open miroru story editor'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'naoki namba / miroru.com',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
