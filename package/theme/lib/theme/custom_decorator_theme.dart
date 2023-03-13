import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class CustomDecoratorTheme extends InputDecorationTheme {
  final ColorScheme colorScheme;

  const CustomDecoratorTheme({
    required this.colorScheme,
  });

  BorderRadius get borderRadius {
    return BorderRadius.circular(
      RadiusSize.radius12,
    );
  }

  @override
  EdgeInsetsGeometry? get contentPadding {
    return EdgeInsets.all(SpaceSize.space8);
  }

  @override
  InputBorder? get border {
    return OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(
        color: colorScheme.outline,
      ),
    );
  }

  @override
  InputBorder? get enabledBorder {
    return OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(
        color: colorScheme.outline,
      ),
    );
  }

  @override
  InputBorder? get disabledBorder {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.outline.withOpacity(0.5),
      ),
    );
  }

  @override
  InputBorder? get errorBorder {
    return OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(
        color: colorScheme.error,
      ),
    );
  }

  @override
  InputBorder? get focusedBorder {
    return OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(
        color: colorScheme.primary,
      ),
    );
  }

  @override
  InputBorder? get focusedErrorBorder {
    return OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(
        color: colorScheme.error,
      ),
    );
  }
}
