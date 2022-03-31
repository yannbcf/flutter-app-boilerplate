import 'package:flutter/material.dart';

class ThemeModel extends ValueNotifier<ThemeData> {
  ThemeModel(ThemeData defaultTheme) : super(defaultTheme);

  ThemeData getTheme() => value;
  void setTheme(ThemeData themeData) {
    value = themeData;
  }
}
