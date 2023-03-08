import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class CustomTextTheme extends TextTheme {
  final ColorScheme colorScheme;

  const CustomTextTheme({
    required this.colorScheme,
  });

  TextStyle get _defaultTextStyle => const TextStyle(
        package: 'theme',
        fontFamily: 'InterFont',
      );

  @override
  TextStyle? get displayLarge => _defaultTextStyle.copyWith(
        fontSize: TextSize.displayLarge,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get displayMedium => _defaultTextStyle.copyWith(
        fontSize: TextSize.displayMedium,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get displaySmall => _defaultTextStyle.copyWith(
        fontSize: TextSize.displaySmall,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get headlineLarge => _defaultTextStyle.copyWith(
        fontSize: TextSize.headlineLarge,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get headlineMedium => _defaultTextStyle.copyWith(
        fontSize: TextSize.headlineMedium,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get headlineSmall => _defaultTextStyle.copyWith(
        fontSize: TextSize.headlineSmall,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get titleLarge => _defaultTextStyle.copyWith(
        fontSize: TextSize.titleLarge,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get titleMedium => _defaultTextStyle.copyWith(
        fontSize: TextSize.titleMedium,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get titleSmall => _defaultTextStyle.copyWith(
        fontSize: TextSize.titleSmall,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get labelLarge => _defaultTextStyle.copyWith(
        fontSize: TextSize.labelLarge,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get labelMedium => _defaultTextStyle.copyWith(
        fontSize: TextSize.labelMedium,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get labelSmall => _defaultTextStyle.copyWith(
        fontSize: TextSize.labelSmall,
        fontWeight: FontWeight.w500,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get bodyLarge => _defaultTextStyle.copyWith(
        fontSize: TextSize.bodyLarge,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get bodyMedium => _defaultTextStyle.copyWith(
        fontSize: TextSize.bodyMedium,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );

  @override
  TextStyle? get bodySmall => _defaultTextStyle.copyWith(
        fontSize: TextSize.bodySmall,
        fontWeight: FontWeight.w400,
        color: colorScheme.onSurface,
      );
}
