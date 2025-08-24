import 'package:flutter/material.dart';
import 'package:muisync/themes/dark_mode.dart';
import 'package:muisync/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // initial lightmode
  ThemeData _themeData = lightmode;

  //get theme
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkmode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightmode) {
      themeData = darkmode;
    } else {
      themeData = lightmode;
    }
  }
}
