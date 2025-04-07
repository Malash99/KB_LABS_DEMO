import 'package:flutter/material.dart';

class CustomColors {
  static bool isDarkMode = false;

  static Color get primary => isDarkMode ? const Color(0xFF12432A) : const Color(0xFF1B4C2E);
  static Color get secondary => isDarkMode ? const Color(0xFF569B47) : const Color(0xFF6BBF59);
  static Color get accent => const Color(0xFFCF5C36); // same in both
  static Color get darkBrown => isDarkMode ? const Color(0xFF1E1411) : const Color(0xFF2C1B16);
  static Color get whiteBackground => isDarkMode ? const Color(0xFF121212) : const Color(0xFFFFFFFF);
  static Color get black => isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF0F0F10);
  static Color get faded => isDarkMode ? const Color.fromRGBO(200, 200, 200, 1) : const Color.fromRGBO(67, 67, 67, 1);
  static Color get greyBoxBorder => const Color(0xFFCFD0D2); // optional tweak
  static Color get redError => const Color.fromRGBO(207, 92, 54, 1);
  static Color get appBarSecondary => isDarkMode ? const Color(0xFF2C4035) : const Color(0xFFE1F2DE);
  static Color get fadedSecondary => isDarkMode ? const Color(0xFF1E2D26) : const Color(0xFFF1F7F3);
  static Color get outlineCard => const Color(0xFFCFD0D2);
}


class CustomStyles {
  static TextStyle mainText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 30 / 24,
    letterSpacing: -0.5,
    color: CustomColors.black,
    decoration: TextDecoration.none,
  );
}

ThemeData getAppTheme(bool isDarkMode) {
  CustomColors.isDarkMode = isDarkMode;

  final brightness = isDarkMode ? Brightness.dark : Brightness.light;

  return ThemeData(
    brightness: brightness,
    colorScheme: ColorScheme(
      brightness: brightness,
      primary: CustomColors.primary,
      secondary: CustomColors.secondary,
      surface: CustomColors.darkBrown,
      background: CustomColors.whiteBackground,
      error: CustomColors.accent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: CustomColors.whiteBackground,
    textTheme: TextTheme(
      displayLarge: CustomStyles.mainText.copyWith(fontSize: 32, color: CustomColors.black),
      bodyLarge: CustomStyles.mainText.copyWith(fontSize: 16, height: 24 / 16, color: CustomColors.black),
      bodyMedium: CustomStyles.mainText.copyWith(fontSize: 14, color: CustomColors.black),
      displayMedium: CustomStyles.mainText.copyWith(fontSize: 28, color: CustomColors.black),
      displaySmall: CustomStyles.mainText.copyWith(fontSize: 24, color: CustomColors.black),
      headlineMedium: CustomStyles.mainText.copyWith(fontSize: 20, color: CustomColors.black),
      headlineSmall: CustomStyles.mainText.copyWith(fontSize: 18, color: CustomColors.black),
      titleLarge: CustomStyles.mainText.copyWith(fontSize: 16, color: CustomColors.black),
      titleMedium: CustomStyles.mainText.copyWith(fontSize: 18, color: CustomColors.black),
      titleSmall: CustomStyles.mainText.copyWith(fontSize: 16, color: CustomColors.black),
      labelLarge: CustomStyles.mainText.copyWith(fontSize: 16, color: CustomColors.black),
      bodySmall: CustomStyles.mainText.copyWith(fontSize: 12, color: CustomColors.black),
      labelSmall: CustomStyles.mainText.copyWith(fontSize: 10, color: CustomColors.black),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: CustomColors.primary,
      foregroundColor: Colors.white,
      titleTextStyle: CustomStyles.mainText.copyWith(
        fontSize: 20,
        height: 26 / 20,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.primary,
        foregroundColor: Colors.white,
        textStyle: CustomStyles.mainText.copyWith(fontSize: 16, height: 24 / 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        minimumSize: const Size(300, 52),
        padding: const EdgeInsets.all(2),
        elevation: 0,
      ),
    ),
  );
}
