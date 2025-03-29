import 'package:flutter/material.dart';

import 'base_colors.dart';

class ColorManager {

  final BuildContext context;

  const ColorManager({required this.context});
  
  Color backgroundSecondaryColor() {
    return _isDarkMode() ? BaseColors.backgroundColorGray : BaseColors.backgroundColorLight;
  }
  
  Color primaryBackgroundColor() {
    return _isDarkMode() ? Colors.black : Colors.white;
  }
  
  Color primaryContrastColor() {
    return _isDarkMode() ? Colors.white : Colors.black;
  }
  
  Color textSecondaryTextColor() {
    return _isDarkMode() ? BaseColors.textColorGray : BaseColors.textColorLight;
  }

  // !WIP
  Color getTextCardIconColor() {
    return BaseColors.systemBlue;
  }

  bool _isDarkMode() {
    final Brightness brightness = MediaQuery.platformBrightnessOf(context);
    return brightness == Brightness.dark;
  }
}
