import 'package:flutter/material.dart';

extension TextContextExtension on BuildContext {
  TextTheme get _textTheme => Theme.of(this).textTheme;

  TextStyle? get displaySmall => _textTheme.displaySmall;

  TextStyle? get displayMedium => _textTheme.displayMedium;

  TextStyle? get displayLarge => _textTheme.displayLarge;

  TextStyle? get headlineSmall => _textTheme.headlineSmall;

  TextStyle? get headlineMedium => _textTheme.headlineMedium;

  TextStyle? get headlineLarge => _textTheme.headlineLarge;

  TextStyle? get titleSmall => _textTheme.titleSmall;

  TextStyle? get titleMedium => _textTheme.titleMedium;

  TextStyle? get titleLarge => _textTheme.titleLarge;

  TextStyle? get labelSmall => _textTheme.labelSmall;

  TextStyle? get labelMedium => _textTheme.labelMedium;

  TextStyle? get labelLarge => _textTheme.labelLarge;

  TextStyle? get bodySmall => _textTheme.bodySmall;

  TextStyle? get bodyMedium => _textTheme.bodyMedium;

  TextStyle? get bodyLarge => _textTheme.bodyLarge;
}
