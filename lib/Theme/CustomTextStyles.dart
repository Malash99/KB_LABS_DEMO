
import 'package:flutter/material.dart';
import 'package:kb_demo_startup/Theme/Theme.dart';

class AppTextStyles {
  // Base styles
  static TextStyle _baseStyle = TextStyle(
    color: CustomColors.black,
    decoration: TextDecoration.none,
  );

  static final TextStyle displayLarge = _baseStyle.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  static final TextStyle displayMedium = _baseStyle.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  static final TextStyle displaySmall = _baseStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  static final TextStyle headlineMedium = _baseStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle headlineSmall = _baseStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle titleLarge = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle titleMedium = _baseStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle titleSmall = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle bodyLarge = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle bodyMedium = _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle bodySmall = _baseStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle labelLarge = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle labelSmall = _baseStyle.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle bodyMediumfadedBold = bodyLarge.copyWith(
    color: CustomColors.faded,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bodymediumbold = titleSmall.copyWith(
      color: CustomColors.black, fontWeight: FontWeight.bold);

  static final TextStyle bodyMediumfaded =
      titleSmall.copyWith(color: CustomColors.faded);

  static final TextStyle bodyMediumhint =
      titleSmall.copyWith(color: CustomColors.greyBoxBorder);

  static final TextStyle bodyMediumWarning =
      titleSmall.copyWith(color: CustomColors.redError);

  static final TextStyle titlesmallfaded = titleSmall.copyWith(
      color: CustomColors.faded, fontWeight: FontWeight.w400);

  static final TextStyle accentBodyMedium = titleSmall.copyWith(
      color: CustomColors.accent, );
}
