import 'package:flutter/material.dart';

import 'base_colors.dart';

extension ColorManager on BuildContext {

  Brightness get brightness => MediaQuery.platformBrightnessOf(this);

  bool get isDarkMode => brightness == Brightness.dark;

  Color get primaryBackgroundColor => isDarkMode ? Colors.black : Colors.white;

  Color get primaryContrastColor => isDarkMode ? Colors.white : Colors.black;

  Color get backgroundSecondaryColor =>
      isDarkMode ? BaseColors.backgroundColorGray : BaseColors.backgroundColorLight;

  Color get secondaryTextColor =>
      isDarkMode ? BaseColors.textColorGray : BaseColors.textColorLight;

  Color get textCardIconColor => BaseColors.systemBlue;
}
