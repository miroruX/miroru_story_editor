## Features

This is a story editor used in miroru. As other story editors had outdated versions, we decided to create one from scratch. It is designed in accordance with the material theme, and in the future, it will be possible to change the design based on the theme. The code is concise and as simple as possible, so any engineer can fork it and customize it easily.

[movie](https://x.com/dev__our/status/1750942975604236458?s=20)

## Getting started

```yaml
dependencies:
  flutter:
    sdk: flutter
  miroru_story_editor: ^0.0.1-dev
```

## Usage

```dart
FilledButton(
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
```
