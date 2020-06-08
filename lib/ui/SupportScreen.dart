import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: SafeArea(child: Center(
      child: Align(alignment: Alignment.center,
          child: Text("For enquiry please mail us at fabuleuxapps@gmail.com",style: TextStyle(fontSize: 30),textAlign: TextAlign.center,)),
    ),),);
  }

}