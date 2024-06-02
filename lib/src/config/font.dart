import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/config/colors.dart';

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

extension TextThemeExtensions on BuildContext {
  TextStyle? get headlineLargeStyle => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineMediumStyle => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineSmallStyle => Theme.of(this).textTheme.headlineSmall;

  TextStyle? get titleLargeStyle => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleMediumStyle => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleSmallStyle => Theme.of(this).textTheme.titleSmall;

  TextStyle? get bodyLargeStyle => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyMediumStyle => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodySmallStyle => Theme.of(this).textTheme.bodySmall;

  TextStyle? get labelLargeStyle => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelMediumStyle => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelSmallStyle => Theme.of(this).textTheme.labelSmall;
}
