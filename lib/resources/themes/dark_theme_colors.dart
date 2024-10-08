import 'package:flutter/material.dart';

/* Dark Theme Colors
|-------------------------------------------------------------------------- */

class DarkThemeColors {
  // general
  Color get background => Color.fromRGBO(51, 51, 51, 1);

  Color get primaryContent => Color.fromRGBO(238, 238, 238, 1);
  Color get primaryAccent => const Color.fromRGBO(255, 221, 45, 1);

  Color get surfaceBackground => Colors.white70;
  Color get surfaceContent => Colors.black;

  // app bar
  Color get appBarBackground => Color.fromRGBO(51, 51, 51, 1);
  Color get appBarPrimaryContent => Color.fromRGBO(238, 238, 238, 1);

  // buttons
  Color get buttonBackground => Colors.white60;
  Color get buttonPrimaryContent => const Color(0xFF232c33);

  // bottom tab bar
  Color get bottomTabBarBackground => Color.fromRGBO(51, 51, 51, 1);

  // bottom tab bar - icons
  Color get bottomTabBarIconSelected => Colors.white70;
  Color get bottomTabBarIconUnselected => Colors.white60;

  // bottom tab bar - label
  Color get bottomTabBarLabelUnselected => Colors.white54;
  Color get bottomTabBarLabelSelected => Colors.white;

  Color get cardColor => Color.fromRGBO(64, 64, 64, 1);

  Color get secondary => Color.fromARGB(255, 71, 167, 247);
}