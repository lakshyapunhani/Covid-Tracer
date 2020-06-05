import 'dart:convert';

import 'package:aadhaartracer/model/AadhaarOuter.dart';
import 'package:aadhaartracer/ui/AadhaarDetailsView.dart';
import 'package:aadhaartracer/ui/History.dart';
import 'package:aadhaartracer/ui/ManualEntryView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xml/xml.dart' as xml;
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:xml2json/xml2json.dart';

class ScannerScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    startScanner() async {
      String cameraScanResult = await scanner.scan();
      //log(cameraScanResult);
      final document = xml.parse(cameraScanResult);
      final msg = document.findAllElements('PrintLetterBarcodeData').map((node) => node.text);
      print(msg);
      final myTransformer = Xml2Json();
      myTransformer.parse(cameraScanResult);
      print('XML string');
      print(cameraScanResult);
      print('');

      // Transform to JSON using GData
      var json = myTransformer.toGData();
      print('GData');
      print('');
      print(json);
      print('');
      AadhaarOuter outer = AadhaarOuter.fromJson(jsonDecode(json));
      print(outer.version);
      print(outer.printLetterBarcodeData.uid);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AadhaarDetailsView(aadhaarOuter: outer),
        ),
      );
    }

    return Scaffold(
        backgroundColor: Color(0xFFcae6e7),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 200,width: 200,child:
              Image.asset('assets/images/scanner.png')),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                child: RaisedButton(
                  onPressed: (){
                    startScanner();
                  },
                    padding: EdgeInsets.all(20),
                    shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child :
                    Text("SCAN AADHAAR"),
                    color: Color(0xFF0e6ba8),
                    textColor: Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          ManualEntryView()));},
                    padding: EdgeInsets.all(20),
                    shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child :
                    Text("MANUAL ENTRY"),
                    color: Color(0xFF0e6ba8),
                    textColor: Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        HistoryScreen()));},
                    padding: EdgeInsets.all(20),
                    shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child :
                    Text("VIEW ENTRIES"),
                    color: Color(0xFF8e2d40),
                    textColor: Colors.white),
              )
            ],
          ),
        )
    );
  }



}