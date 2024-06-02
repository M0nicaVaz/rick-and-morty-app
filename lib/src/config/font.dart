import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/config/theme.dart';

class FontConfig extends TextTheme {
  @override
  TextStyle? get headlineLarge => TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: ColorsConfig().grey500,
      );

  @override
  TextStyle? get headlineMedium => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: ColorsConfig().grey500,
      );

  @override
  TextStyle? get headlineSmall => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: ColorsConfig().grey500,
      );

  @override
  TextStyle? get titleLarge => TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: ColorsConfig().grey500);

  @override
  TextStyle? get titleMedium => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: ColorsConfig().grey500);

  @override
  TextStyle? get titleSmall => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: ColorsConfig().grey500);

  @override
  TextStyle? get bodyLarge => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: ColorsConfig().grey500);

  @override
  TextStyle? get bodyMedium => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: ColorsConfig().grey500);

  @override
  TextStyle? get bodySmall => TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: ColorsConfig().grey500);

  @override
  TextStyle? get labelLarge => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: ColorsConfig().grey500,
      );

  @override
  TextStyle? get labelMedium => TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: ColorsConfig().grey500,
      );

  @override
  TextStyle? get labelSmall => TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: ColorsConfig().grey500);
}
