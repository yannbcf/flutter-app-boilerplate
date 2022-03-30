import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'src/setting/settings_themes.dart';
import 'src/model/locale.dart';
import 'src/model/theme.dart';
import 'src/app.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LocaleModel(const Locale('EN'))),
      ChangeNotifierProvider(create: (_) => ThemeModel(AppThemes.lightTheme)),
    ],
    child: const MyApp(),
  ));
}
