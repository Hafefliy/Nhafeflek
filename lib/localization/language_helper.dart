import 'package:flutter/material.dart';

class LanguageHelper {
  convertLangNameToLocale(String langNameToConvert) {
    Locale convertedLocale;

    switch (langNameToConvert) {
      case 'English':
        convertedLocale = const Locale('en', 'EN');
        break;
      case 'Français':
        convertedLocale = const Locale('fr', 'FR');
        break;
      case 'العربية':
        convertedLocale = const Locale('ar', 'AR');
        break;
      default:
        convertedLocale = const Locale('en', 'EN');
    }

    return convertedLocale;
  }

  convertLocaleToLangName(String localeToConvert) {
    String langName;

    switch (localeToConvert) {
      case 'en':
        langName = "English";
        break;
      case 'fr':
        langName = "Français";
        break;
      case 'ar':
        langName = "العربية";
        break;
      default:
        langName = "English";
    }

    return langName;
  }
}