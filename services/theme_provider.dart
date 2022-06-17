import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkMode,
  }) : currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  toogleTheme() {
    currentTheme == ThemeData.dark() ? currentTheme = ThemeData.light() : currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
