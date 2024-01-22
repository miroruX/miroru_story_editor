import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miroru_story_editor/presentation/res/color_schemes.g.dart';

ThemeData getInstagramThemeDark() {
  final base = ThemeData.from(
    useMaterial3: true,
    colorScheme: instagramColorScheme,
  );

  return base.copyWith(
    primaryColor: instagramColorScheme.primary,
    scaffoldBackgroundColor: instagramColorScheme.scrim,
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.dark,
      textTheme: CupertinoTextThemeData(
        dateTimePickerTextStyle: base.textTheme.bodyMedium!.copyWith(
          fontSize: 15,
        ),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: instagramColorScheme.outline,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      labelTextStyle: const MaterialStatePropertyAll(
        TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14,
          letterSpacing: 2,
        ),
      ),
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 14,
        letterSpacing: 2,
      ),
      position: PopupMenuPosition.under,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: instagramColorScheme.outline,
      contentTextStyle: base.textTheme.bodyMedium?.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        color: Colors.white,
      ),
      actionTextColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      showCloseIcon: true,
      closeIconColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: instagramColorScheme.onTertiary,
        backgroundColor: instagramColorScheme.tertiary,
        elevation: 0,
        shadowColor: Colors.transparent,
        textStyle: base.textTheme.bodyMedium?.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          color: instagramColorScheme.onPrimary,
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: instagramColorScheme.tertiary,
      thickness: 2,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        backgroundColor: instagramColorScheme.outline,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: instagramColorScheme.onTertiary,
        backgroundColor: instagramColorScheme.tertiary,
        minimumSize: const Size(double.infinity, 50),
        textStyle: base.textTheme.bodyMedium?.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: base.textTheme.bodyMedium?.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Colors.black,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        letterSpacing: 10,
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
  );
}
