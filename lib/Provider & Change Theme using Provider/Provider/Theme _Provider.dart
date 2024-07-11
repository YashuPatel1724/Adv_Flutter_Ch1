import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier
{
  bool isDark = false;

  void theme()
  {
    isDark = !isDark;
    notifyListeners();
  }
}