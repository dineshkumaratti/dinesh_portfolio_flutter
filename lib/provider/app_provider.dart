import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeMap = {
  "dark": ThemeMode.dark,
  "light": ThemeMode.light,
};

class AppProvider extends ChangeNotifier {
  static AppProvider state(BuildContext context, [bool listen = false]) =>
      Provider.of<AppProvider>(context, listen: listen);

  ThemeMode _themeMode = ThemeMode.dark; // Default to dark
  ThemeMode get themeMode => _themeMode;

  bool get isDark => _themeMode == ThemeMode.dark;

  void init() async {
    final prefs = await SharedPreferences.getInstance();
    String? stringTheme = prefs.getString('theme');

    // If no saved theme, default to dark
    if (stringTheme == null || !themeMap.containsKey(stringTheme)) {
      _themeMode = ThemeMode.dark;
      await prefs.setString('theme', 'dark');
    } else {
      _themeMode = themeMap[stringTheme]!;
    }

    notifyListeners();
  }

  void setTheme(ThemeMode newTheme) async {
    if (_themeMode == newTheme) return;

    _themeMode = newTheme;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', newTheme.toString().split('.').last);
    notifyListeners();
  }
}
