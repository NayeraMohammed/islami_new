import 'package:flutter/material.dart';

class AppConfig extends ChangeNotifier {

  ThemeMode themeMode = ThemeMode.light;
  Locale locale = Locale("en");

  void changeTheme(ThemeMode newTheme) {
    themeMode = newTheme;
    notifyListeners();
  }

  void changeLanguage(String langCode) {
    locale = Locale(langCode);
    notifyListeners();
  }
}