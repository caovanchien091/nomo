import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class CustomTheme {
  static ThemeData get dark => _buildTheme(true);

  static ThemeData get light => _buildTheme(false);

  static ThemeData _buildTheme(bool isDark) {
    ThemeData data;

    if (isDark) {
      data = ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ThemeColor.dark,
        extensions: [
          CustomColor.dark,
        ],
      );
    } else {
      data = ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ThemeColor.light,
        extensions: [
          CustomColor.light,
        ],
      );
    }

    return data.copyWith(
      textTheme: CustomTextTheme(
        colorScheme: data.colorScheme,
      ),
    );
  }
}
