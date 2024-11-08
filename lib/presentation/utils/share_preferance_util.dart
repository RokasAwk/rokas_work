import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceUtil {
  static final SharePreferenceUtil _instance = SharePreferenceUtil._internal();
  late final SharedPreferences prefs;

  factory SharePreferenceUtil() {
    return _instance;
  }
  static const String _userNameKey = 'userName';
  static const String _userExpKey = 'userExp';
  static const String _userDescriptionKey = 'userDescription';

  SharePreferenceUtil._internal();

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<void> setUserName(String userName) async {
    await prefs.setString(_userNameKey, userName);
  }

  Future<void> setUserDescription(String userDescription) async {
    await prefs.setString(_userDescriptionKey, userDescription);
  }

  Future<void> setUserExp(int userExp) async {
    await prefs.setInt(_userExpKey, userExp);
  }

  String? getUserName() => prefs.getString(_userNameKey);
  int? getUserExp() => prefs.getInt(_userExpKey);
  String? getUserDescription() => prefs.getString(_userDescriptionKey);
}
