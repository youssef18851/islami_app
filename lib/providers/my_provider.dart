import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = 'en';
  ThemeMode themeCode = ThemeMode.light;

  void changeLanguage(String langCode) {
    languageCode = langCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode theme) {
    themeCode = theme;
    notifyListeners();
  }
}
