import 'package:flutter/material.dart';

class LocaleModel extends ValueNotifier<Locale> {
  LocaleModel(Locale defaultLocale) : super(defaultLocale);

  static Locale convertLangNameToLocale(String langNameToConvert) {
    switch (langNameToConvert) {
      case 'English':
        return const Locale('en', 'EN');
      case 'Français':
        return const Locale('fr', 'FR');
      case 'Español':
        return const Locale('es', 'ES');
      case 'Русский':
        return const Locale('ru', 'RU');
      default:
        return const Locale('en', 'EN');
    }
  }

  static String convertLocaleToLangName(String localeToConvert) {
    switch (localeToConvert) {
      case 'en':
        return "English";
      case 'fr':
        return "Français";
      case 'es':
        return "Español";
      case 'ru':
        return "Русский";
      default:
        return "English";
    }
  }

  Locale getLocale() => value;
  void setLocale(Locale locale) {
    value = locale;
  }
}
