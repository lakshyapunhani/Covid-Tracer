import 'package:aadhaartracer/ui/BottomNavigationScreen.dart';
import 'package:aadhaartracer/ui/SplashScreen.dart';
import 'package:provider/provider.dart';

import 'common/moor_database.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Provider<MoorDatabase>(
        create: (context) => new MoorDatabase(),
        child:MaterialApp(
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
