import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class SettingsScreen extends StatelessWidget{

  shareApp(){
    Share.share('I recommend Aarogya Setu app to fight against COVID19. Please download and share it using this link Android : https://play.google.com/store/apps/details?id=nic.goi.aarogyasetu');
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.chat),
              Padding(padding: EdgeInsets.only(left: 20),),
              Expanded(child:Text("Chat with us",style: TextStyle(fontSize: 20),) ,flex: 10)
            ],),),
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
