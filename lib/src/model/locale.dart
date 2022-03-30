import 'package:flutter/material.dart';

class LocaleModel extends ValueNotifier<Locale> {
  LocaleModel(Locale defaultLocale) : super(defaultLocale);

  static convertLangNameToLocale(String langNameToConvert) {
    Locale convertedLocale;

    switch (langNameToConvert) {
      case 'English':
        convertedLocale = const Locale('en', 'EN');
        break;
      case 'Français':
        convertedLocale = const Locale('fr', 'FR');
        break;
      case 'Español':
        convertedLocale = const Locale('es', 'ES');
        break;
      case 'Русский':
        convertedLocale = const Locale('ru', 'RU');
        break;
      default:
        convertedLocale = const Locale('en', 'EN');
    }

    return convertedLocale;
  }

  static convertLocaleToLangName(String localeToConvert) {
    String langName;

    switch (localeToConvert) {
      case 'en':
        langName = "English";
        break;
      case 'fr':
        langName = "Français";
        break;
      case 'es':
        langName = "Español";
        break;
      case 'ru':
        langName = "Русский";
        break;
      default:
        langName = "English";
    }

    return langName;
  }

  getLocale() => value;
  setLocale(Locale locale) {
    value = locale;
  }
}
