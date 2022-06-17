import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name => _prefs.getString('name') ?? _name;

  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }

  static bool get isDarkMode => _prefs.getBool('isDarkMode') ?? _isDarkMode;

  static set isDarkMode(bool dark) {
    _isDarkMode = dark;
    _prefs.setBool('isDarkMode', dark);
  }

  static int get gender => _prefs.getInt('gender') ?? _gender;

  static set gender(int gender) {
    _gender = gender;
    _prefs.setInt('gender', gender);
  }
}
