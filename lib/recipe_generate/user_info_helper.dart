import 'package:shared_preferences/shared_preferences.dart';

class UserInfoHelper {
  static Future<String> getFullName() async {
    final prefs = await SharedPreferences.getInstance();
    final firstName = prefs.getString('first_name') ?? '';
    final lastName = prefs.getString('last_name') ?? '';
    return '$firstName $lastName';
  }
}
