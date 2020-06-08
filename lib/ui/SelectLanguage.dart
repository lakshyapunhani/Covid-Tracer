import 'package:aadhaartracer/common/AppLanguage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectLanguage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context);

    changeLanguage(language){
      switch(language){
        case "en":
          appLanguage.changeLanguage(Locale("en"));
          break;
        case "ta":
          appLanguage.changeLanguage(Locale("ta"));
          break;
      }
    }

    return Scaffold(body: SafeArea(child:
    Column(children: <Widget>[
      InkWell(onTap:changeLanguage("en"),child: Container(padding: EdgeInsets.all(5.0),child: Text("English"),)),
      Divider(color: Colors.grey,),
      InkWell(onTap:changeLanguage("ta"),child: Container(padding: EdgeInsets.all(5.0),child: Text("Tamil"),)),
      Divider(color: Colors.grey,)
    ],),),);
  }
}
