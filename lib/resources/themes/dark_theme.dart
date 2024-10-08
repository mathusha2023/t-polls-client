import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/themes/dark_theme_colors.dart';

DarkThemeColors colors = DarkThemeColors();

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: colors.primaryContent,
  primaryColorDark: colors.primaryContent,
  focusColor: colors.primaryAccent,
  scaffoldBackgroundColor: colors.background,
  cardColor: colors.cardColor,
);
