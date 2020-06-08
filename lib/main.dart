import 'package:aadhaartracer/ui/BottomNavigationScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'common/AppLanguage.dart';
import 'common/AppLocalizations.dart';
import 'common/moor_database.dart';
import 'package:flutter/material.dart';

void main() {
//  AppLanguage appLanguage = AppLanguage();
//  await appLanguage.fetchLocale();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.'
  final AppLanguage appLanguage;

  MyApp({this.appLanguage});

  @override
  Widget build(BuildContext context) {

    return Provider<MoorDatabase>(
        create: (context) => new MoorDatabase(),
        child:MaterialApp(
          supportedLocales: [
            Locale('en', 'US'),
            Locale('ta', ''),
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          title: 'Corona Tracer',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: BottomNavigationWidget(),
        ));
  }
}
