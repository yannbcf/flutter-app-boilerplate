import 'package:flutter/material.dart';

class ThemeModel extends ValueNotifier<ThemeData> {
  ThemeModel(ThemeData defaultTheme) : super(defaultTheme);

  getTheme() => value;
  setTheme(ThemeData themeData) {
    value = themeData;
  }
}
