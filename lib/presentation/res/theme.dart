import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miroru_story_editor/presentation/res/color_schemes.g.dart';

ThemeData getMiroruThemeLight() {
  final base = ThemeData.from(
    useMaterial3: true,
    colorScheme: lightColorScheme,
  );

  return base.copyWith(
    primaryColor: lightColorScheme.onSurface,
    scaffoldBackgroundColor: lightColorScheme.scrim,
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.dark,
      textTheme: CupertinoTextThemeData(
        dateTimePickerTextStyle: base.textTheme.bodyMedium!.copyWith(
          fontSize: 15,
        ),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: lightColorScheme.primary,
      unselectedLabelColor: lightColorScheme.onSurface.withOpacity(0.5),
      indicator: BoxDecoration(
        shape: BoxShape.circle,
        color: lightColorScheme.primaryContainer,
      ),
      labelPadding: const EdgeInsets.all(8),
      splashFactory: NoSplash.splashFactory,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      dividerHeight: 0,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: base.textTheme.bodyMedium?.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
      unselectedLabelStyle: base.textTheme.bodyMedium?.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: lightColorScheme.primaryContainer,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      labelTextStyle: MaterialStatePropertyAll(
        TextStyle(
          color: lightColorScheme.onPrimaryContainer,
          fontWeight: FontWeight.bold,
          fontSize: 14,
          letterSpacing: 2,
        ),
      ),
      textStyle: TextStyle(
        color: lightColorScheme.onPrimaryContainer,
        fontWeight: FontWeight.bold,
        fontSize: 14,
        letterSpacing: 2,
      ),
      position: PopupMenuPosition.under,
    ),
    dividerTheme: DividerThemeData(
      color: lightColorScheme.onSurface,
      thickness: 2,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: lightColorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: lightColorScheme.primary,
      inactiveTrackColor: lightColorScheme.onSurface.withOpacity(0.5),
      thumbColor: lightColorScheme.primary,
      overlayColor: lightColorScheme.primary.withOpacity(0.5),
      trackHeight: 2,
      thumbShape: const RoundSliderThumbShape(
        enabledThumbRadius: 8,
      ),
      overlayShape: const RoundSliderOverlayShape(
        overlayRadius: 16,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        backgroundColor: lightColorScheme.primaryContainer,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: lightColorScheme.onSurface,
        backgroundColor: lightColorScheme.surface,
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

ThemeData getMiroruThemeDark() {
  final base = ThemeData.from(
    useMaterial3: true,
    colorScheme: darkColorScheme,
  );

  return base.copyWith(
    primaryColor: darkColorScheme.onSurface,
    scaffoldBackgroundColor: darkColorScheme.scrim,
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.dark,
      textTheme: CupertinoTextThemeData(
        dateTimePickerTextStyle: base.textTheme.bodyMedium!.copyWith(
          fontSize: 15,
        ),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: lightColorScheme.primary,
      unselectedLabelColor: darkColorScheme.onSurface.withOpacity(0.5),
      indicator: BoxDecoration(
        shape: BoxShape.circle,
        color: darkColorScheme.scrim,
      ),
      splashFactory: NoSplash.splashFactory,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      dividerHeight: 0,
      labelPadding: const EdgeInsets.all(8),
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: base.textTheme.bodyMedium?.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
      unselectedLabelStyle: base.textTheme.bodyMedium?.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: darkColorScheme.surface,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      labelTextStyle: MaterialStatePropertyAll(
        TextStyle(
          color: darkColorScheme.onSurface,
          fontWeight: FontWeight.bold,
          fontSize: 14,
          letterSpacing: 2,
        ),
      ),
      textStyle: TextStyle(
        color: darkColorScheme.onSurface,
        fontWeight: FontWeight.bold,
        fontSize: 14,
        letterSpacing: 2,
      ),
      position: PopupMenuPosition.under,
    ),
    dividerTheme: DividerThemeData(
      color: darkColorScheme.onSurface,
      thickness: 2,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.white,
      inactiveTrackColor: darkColorScheme.onSurface.withOpacity(0.5),
      thumbColor: Colors.white,
      overlayColor: darkColorScheme.onSurface.withOpacity(0.5),
      trackHeight: 2,
      thumbShape: const RoundSliderThumbShape(
        enabledThumbRadius: 8,
      ),
      overlayShape: const RoundSliderOverlayShape(
        overlayRadius: 16,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        elevation: 0,
        backgroundColor: darkColorScheme.surface,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: darkColorScheme.onSurface,
        backgroundColor: darkColorScheme.surface,
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
