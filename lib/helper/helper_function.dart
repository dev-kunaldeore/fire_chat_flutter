import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  //saveing the data in a sf
  //keys
  static String userLoggdedInKey = "LOGGEDINKEY";
  static String usernameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  //getting the data in a sf

  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggdedInKey);
  }
}
