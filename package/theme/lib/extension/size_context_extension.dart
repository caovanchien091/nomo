import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

extension SizeContextExtension on BuildContext {
  double get radius4 => RadiusSize.radius4;

  double get radius8 => RadiusSize.radius8;

  double get radius12 => RadiusSize.radius12;

  double get radius16 => RadiusSize.radius16;

  double get radius20 => RadiusSize.radius20;

  double get radius24 => RadiusSize.radius24;

  double get radius32 => RadiusSize.radius32;

  double get space4 => SpaceSize.space4;

  double get space8 => SpaceSize.space8;

  double get space12 => SpaceSize.space12;

  double get space16 => SpaceSize.space16;

  double get space20 => SpaceSize.space20;

  double get space24 => SpaceSize.space24;

  double get space32 => SpaceSize.space32;

  EdgeInsets get padding => ScreenSize.padding;

  double get paddingTop => ScreenSize.paddingTop;

  double get paddingBottom => ScreenSize.paddingBottom;

  double get paddingLeft => ScreenSize.paddingLeft;

  double get paddingRight => ScreenSize.paddingRight;

  EdgeInsets get viewPadding => ScreenSize.viewPadding;

  double get viewPaddingTop => ScreenSize.viewPaddingTop;

  double get viewPaddingBottom => ScreenSize.viewPaddingBottom;

  double get viewPaddingLeft => ScreenSize.viewPaddingLeft;

  double get viewPaddingRight => ScreenSize.viewPaddingRight;

  EdgeInsets get viewInsets => ScreenSize.viewInsets;

  double get viewInsetsTop => ScreenSize.viewInsetsTop;

  double get viewInsetsBottom => ScreenSize.viewInsetsBottom;

  double get viewInsetsLeft => ScreenSize.viewInsetsLeft;

  double get viewInsetsRight => ScreenSize.viewInsetsRight;

  Size get size => ScreenSize.size;

  double get height => ScreenSize.height;

  double get width => ScreenSize.width;

  double get heightPixel => ScreenSize.heightPixel;

  double get widthPixel => ScreenSize.widthPixel;

  double get aspectRatio => ScreenSize.aspectRatio;

  double get devicePixelRatio => ScreenSize.devicePixelRatio;

  double get displayLargeSize => TextSize.displayLarge;

  double get displayMediumSize => TextSize.displayMedium;

  double get displaySmallSize => TextSize.displaySmall;

  double get headlineLargeSize => TextSize.headlineLarge;

  double get headlineMediumSize => TextSize.headlineMedium;

  double get headlineSmallSize => TextSize.headlineSmall;

  double get titleLargeSize => TextSize.titleLarge;

  double get titleMediumSize => TextSize.titleMedium;

  double get titleSmallSize => TextSize.titleSmall;

  double get labelLargeSize => TextSize.labelLarge;

  double get labelMediumSize => TextSize.labelMedium;

  double get labelSmallSize => TextSize.labelSmall;

  double get bodyLargeSize => TextSize.bodyLarge;

  double get bodyMediumSize => TextSize.bodyMedium;

  double get bodySmallSize => TextSize.bodySmall;
}
