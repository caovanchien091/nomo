import 'package:core/core.dart';
import 'package:flutter/material.dart';

extension ColorThemeExtension on BuildContext {
  ColorScheme get _colorScheme => Theme.of(this).colorScheme;

  CustomColorScheme get _customColorScheme => Theme.of(this).extension()!;

  Color get primaryColor => _colorScheme.primary;

  Color get onPrimaryColor => _colorScheme.onPrimary;

  Color get primaryContainerColor => _colorScheme.primaryContainer;

  Color get onPrimaryContainerColor => _colorScheme.onPrimaryContainer;

  Color get secondaryColor => _colorScheme.secondary;

  Color get onSecondaryColor => _colorScheme.onSecondary;

  Color get secondaryContainerColor => _colorScheme.secondaryContainer;

  Color get onSecondaryContainerColor => _colorScheme.onSecondaryContainer;

  Color get tertiaryColor => _colorScheme.tertiary;

  Color get onTertiaryColor => _colorScheme.onTertiary;

  Color get tertiaryContainerColor => _colorScheme.tertiaryContainer;

  Color get onTertiaryContainerColor => _colorScheme.onTertiaryContainer;

  Color get errorColor => _colorScheme.error;

  Color get errorContainerColor => _colorScheme.errorContainer;

  Color get onErrorColor => _colorScheme.onError;

  Color get onErrorContainerColor => _colorScheme.onErrorContainer;

  Color get backgroundColor => _colorScheme.background;

  Color get onBackgroundColor => _colorScheme.onBackground;

  Color get surfaceColor => _colorScheme.surface;

  Color get onSurfaceColor => _colorScheme.onSurface;

  Color get surfaceVariantColor => _colorScheme.surfaceVariant;

  Color get onSurfaceVariantColor => _colorScheme.onSurfaceVariant;

  Color get outlineColor => _colorScheme.outline;

  Color get onInverseSurfaceColor => _colorScheme.onInverseSurface;

  Color get inverseSurfaceColor => _colorScheme.inverseSurface;

  Color get inversePrimaryColor => _colorScheme.inversePrimary;

  Color get shadowColor => _colorScheme.shadow;

  Color get surfaceTintColor => _colorScheme.surfaceTint;

// Color get outlineVariantColor => colorScheme.outlineVariant;

// Color get scrimColor => colorScheme.scrim;

  Color get sourceWhite => _customColorScheme.sourceWhite;

  Color get white => _customColorScheme.white;

  Color get onWhite => _customColorScheme.onWhite;

  Color get whiteContainer => _customColorScheme.whiteContainer;

  Color get onWhiteContainer => _customColorScheme.onWhiteContainer;

  Color get sourceSilver => _customColorScheme.sourceSilver;

  Color get silver => _customColorScheme.silver;

  Color get onSilver => _customColorScheme.onSilver;

  Color get silverContainer => _customColorScheme.silverContainer;

  Color get onSilverContainer => _customColorScheme.onSilverContainer;

  Color get sourceGray => _customColorScheme.sourceGray;

  Color get gray => _customColorScheme.gray;

  Color get onGray => _customColorScheme.onGray;

  Color get grayContainer => _customColorScheme.grayContainer;

  Color get onGrayContainer => _customColorScheme.onGrayContainer;

  Color get sourceBlack => _customColorScheme.sourceBlack;

  Color get black => _customColorScheme.black;

  Color get onBlack => _customColorScheme.onBlack;

  Color get blackContainer => _customColorScheme.blackContainer;

  Color get onBlackContainer => _customColorScheme.onBlackContainer;

  Color get sourceRed => _customColorScheme.sourceRed;

  Color get red => _customColorScheme.red;

  Color get onRed => _customColorScheme.onRed;

  Color get redContainer => _customColorScheme.redContainer;

  Color get onRedContainer => _customColorScheme.onRedContainer;

  Color get sourceMaroon => _customColorScheme.sourceMaroon;

  Color get maroon => _customColorScheme.maroon;

  Color get onMaroon => _customColorScheme.onMaroon;

  Color get maroonContainer => _customColorScheme.maroonContainer;

  Color get onMaroonContainer => _customColorScheme.onMaroonContainer;

  Color get sourceYellow => _customColorScheme.sourceYellow;

  Color get yellow => _customColorScheme.yellow;

  Color get onYellow => _customColorScheme.onYellow;

  Color get yellowContainer => _customColorScheme.yellowContainer;

  Color get onYellowContainer => _customColorScheme.onYellowContainer;

  Color get sourceOlive => _customColorScheme.sourceOlive;

  Color get olive => _customColorScheme.olive;

  Color get onOlive => _customColorScheme.onOlive;

  Color get oliveContainer => _customColorScheme.oliveContainer;

  Color get onOliveContainer => _customColorScheme.onOliveContainer;

  Color get sourceLime => _customColorScheme.sourceLime;

  Color get lime => _customColorScheme.lime;

  Color get onLime => _customColorScheme.onLime;

  Color get limeContainer => _customColorScheme.limeContainer;

  Color get onLimeContainer => _customColorScheme.onLimeContainer;

  Color get sourceGreen => _customColorScheme.sourceGreen;

  Color get green => _customColorScheme.green;

  Color get onGreen => _customColorScheme.onGreen;

  Color get greenContainer => _customColorScheme.greenContainer;

  Color get onGreenContainer => _customColorScheme.onGreenContainer;

  Color get sourceAqua => _customColorScheme.sourceAqua;

  Color get aqua => _customColorScheme.aqua;

  Color get onAqua => _customColorScheme.onAqua;

  Color get aquaContainer => _customColorScheme.aquaContainer;

  Color get onAquaContainer => _customColorScheme.onAquaContainer;

  Color get sourceTeal => _customColorScheme.sourceTeal;

  Color get teal => _customColorScheme.teal;

  Color get onTeal => _customColorScheme.onTeal;

  Color get tealContainer => _customColorScheme.tealContainer;

  Color get onTealContainer => _customColorScheme.onTealContainer;

  Color get sourceBlue => _customColorScheme.sourceBlue;

  Color get blue => _customColorScheme.blue;

  Color get onBlue => _customColorScheme.onBlue;

  Color get blueContainer => _customColorScheme.blueContainer;

  Color get onBlueContainer => _customColorScheme.onBlueContainer;

  Color get sourceNavy => _customColorScheme.sourceNavy;

  Color get navy => _customColorScheme.navy;

  Color get onNavy => _customColorScheme.onNavy;

  Color get navyContainer => _customColorScheme.navyContainer;

  Color get onNavyContainer => _customColorScheme.onNavyContainer;

  Color get sourceFuchsia => _customColorScheme.sourceFuchsia;

  Color get fuchsia => _customColorScheme.fuchsia;

  Color get onFuchsia => _customColorScheme.onFuchsia;

  Color get fuchsiaContainer => _customColorScheme.fuchsiaContainer;

  Color get onFuchsiaContainer => _customColorScheme.onFuchsiaContainer;

  Color get sourcePurple => _customColorScheme.sourcePurple;

  Color get purple => _customColorScheme.purple;

  Color get onPurple => _customColorScheme.onPurple;

  Color get purpleContainer => _customColorScheme.purpleContainer;

  Color get onPurpleContainer => _customColorScheme.onPurpleContainer;
}
