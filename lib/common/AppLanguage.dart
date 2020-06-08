import 'package:flutter/cupertino.dart';
import 'SessionManager.dart';


class AppLanguage extends ChangeNotifier {
  Locale _appLocale = Locale('ta');
  Locale get appLocal => _appLocale ?? Locale("en");
  fetchLocale() async {
    var language = await getLanguagePreference();
    if (language == null) {
      _appLocale = Locale('en');
      return Null;
    }
    _appLocale = Locale(language);
    return Null;
  }


  void changeLanguage(Locale type) async {
    if (_appLocale == type) {
      return;
    }
    if (type == Locale("ta")) {
      _appLocale = Locale("ta");
      await setLanguagePreference('ta');
//      await prefs.setString('language_code', 'ta');
//      await prefs.setString('countryCode', '');
    } else {
      _appLocale = Locale("en");
      await setLanguagePreference('en');
//      await prefs.setString('language_code', 'en');
//      await prefs.setString('countryCode', 'US');
    }
    notifyListeners();
  }
}