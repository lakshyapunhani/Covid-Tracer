import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aadhaartracer/common/moor_database.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

class ManualEntryView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => ManualEntryViewState();
}

class ManualEntryViewState extends State<ManualEntryView>{

  var database;
  var formatter;

  TextEditingController idProofEditingController = TextEditingController();
  TextEditingController idProofNumberEditingController = TextEditingController();
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController addressEditingController = TextEditingController();
  TextEditingController phoneNumberEditingController = TextEditingController();

  insertEntry() async{
    database = Provider.of<MoorDatabase>(context,
        listen: false);

    final entry = Entrie(
        idType: idProofEditingController.text,
        idNumber: idProofEditingController.text,
        name: nameEditingController.text,
        address: addressEditingController.text,
        phoneNumber: phoneNumberEditingController.text,
        timestamp: DateTime.now());
    database.insertEntry(entry);
    Toast.show("Successfully inserted", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SafeArea(child:
    Container(margin: EdgeInsets.all(10.0),
        child:
        Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            alignment: Alignment.bottomLeft,
            child: TextField(
              controller: idProofEditingController,
              decoration: const InputDecoration(
                labelText: 'Id Proof',
                hintText: 'Enter Id Proof',
                filled: true,
              ),
              onChanged: (String value) {
                setState(() {
//                _contactAddress = value;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            alignment: Alignment.bottomLeft,
            child: TextField(
              controller: idProofNumberEditingController,
              decoration: const InputDecoration(
                labelText: 'Driving License Number',
                hintText: 'Enter number',
                filled: true,
              ),
              onChanged: (String value) {
                setState(() {
//                _contactAddress = value;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            alignment: Alignment.bottomLeft,
            child: TextField(
              controller: nameEditingController,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'Enter name',
                filled: true,
              ),
              onChanged: (String value) {
                setState(() {
//                _contactAddress = value;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            alignment: Alignment.bottomLeft,
            child: TextField(
              controller: addressEditingController,
              decoration: const InputDecoration(
                labelText: 'Address',
                hintText: 'Enter address',
                filled: true,
              ),
              onChanged: (String value) {
                setState(() {
//                _contactAddress = value;
                });
              },
            ),
          ),Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            alignment: Alignment.bottomLeft,
            child: TextField(
              controller: phoneNumberEditingController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter number',
                filled: true,
              ),
              onChanged: (String value) {
                setState(() {
//                _contactAddress = value;
                });
              },
            ),
          ),
          Expanded(
              child:Align(alignment: Alignment.bottomCenter,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
                    Expanded(child: ButtonTheme(height: 50,child: RaisedButton(color:Color(0xFF0e6ba8),
                      onPressed: () => {
                        insertEntry()
                      },
                      child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 22)),
                    ))),
                    Expanded(child: ButtonTheme(height: 50,child: RaisedButton(color:Colors.red,
                      onPressed: () => {
                        Navigator.pop(context)},
                      child: Text("Cancel",style: TextStyle(color: Colors.white,fontSize: 22)),
                    )))

                  ],))
          ),
        ],)),),);
  }

}