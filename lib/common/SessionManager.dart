import 'package:shared_preferences/shared_preferences.dart';

final LANGUAGE_PREFERENCE = 'language_preference';

Future<String> getLanguagePreference() async
{
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  
  return _sharedPreferences.getString(LANGUAGE_PREFERENCE);
}

Future<String> setLanguagePreference(language) async{
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  _sharedPreferences.setString(LANGUAGE_PREFERENCE, language);
}