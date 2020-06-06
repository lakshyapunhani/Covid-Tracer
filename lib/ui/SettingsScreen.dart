import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:flutter_freshchat/flutter_freshchat.dart';

class SettingsScreen extends StatelessWidget{

  shareApp(){
    Share.share('I recommend Corona Tracer app to fight against COVID19. Please download and share it using this link Android : https://play.google.com/store/apps/details?id=com.fabuleux.aadhaartracer');
  }

  openSupport() async{
    await FlutterFreshchat.init(appID: 'd462331e-d19a-46e1-9f72-696564b6c514',
        appKey: 'ac2788ab-197d-4108-8a21-a6415be5a1f6');

    await FlutterFreshchat.showConversations(title: 'Support');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Settings"),
        backgroundColor:  Color(0xFF0e6ba8)),
      body: SafeArea(child:
      Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child:
          InkWell(onTap: shareApp,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.share),
                Padding(padding: EdgeInsets.only(left: 20),),
                Expanded(child:Text("Share",style: TextStyle(fontSize: 20),) ,flex: 10)
              ],),
          ),
        ),
        Divider(
            color: Colors.black
        ),Container(padding: EdgeInsets.all(10.0),
          child:
          InkWell(onTap: openSupport,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.chat),
                Padding(padding: EdgeInsets.only(left: 20),),
                Expanded(child:Text("Chat with us",style: TextStyle(fontSize: 20),) ,flex: 10)
              ],),
          ),),
        Divider(
            color: Colors.black
        ),
        Container(padding: EdgeInsets.all(10.0),
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.announcement),
              Padding(padding: EdgeInsets.only(left: 20),),
              Expanded(child:Text("Privacy Policy",style: TextStyle(fontSize: 20),) ,flex: 10)
            ],),),
        Divider(
            color: Colors.black
        ),
        Container(padding: EdgeInsets.all(10.0),
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.language),
              Padding(padding: EdgeInsets.only(left: 20),),
              Expanded(child:Text("Change Language",style: TextStyle(fontSize: 20),) ,flex: 10)
            ],),),
        Divider(
            color: Colors.black
        ),
      ],),),);
  }

}
