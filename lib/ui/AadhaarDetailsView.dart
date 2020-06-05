import 'package:aadhaartracer/model/AadhaarOuter.dart';
import 'package:aadhaartracer/model/AadhaarParseModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:aadhaartracer/common/moor_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

class AadhaarDetailsView extends StatefulWidget{

  final AadhaarOuter aadhaarOuter;

  AadhaarDetailsView({Key key, @required this.aadhaarOuter}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AadhaarDetailsViewState();
  }

}

class AadhaarDetailsViewState extends State<AadhaarDetailsView>{

  var database;
  var formatter;

  @override
  void initState() {
    //getProjectDetails();
  }

//  void getProjectDetails() async {
//    database = Provider.of<MoorDatabase>(context,
//        listen: false);
//  }

   insertEntry() async{
     database = Provider.of<MoorDatabase>(context,
         listen: false);

    final entry = Entrie(
        idType: "Aadhaar",
        idNumber: widget.aadhaarOuter.printLetterBarcodeData.uid,
        name: widget.aadhaarOuter.printLetterBarcodeData.name,
        address: widget.aadhaarOuter.printLetterBarcodeData.house
            + " " + widget.aadhaarOuter.printLetterBarcodeData.street
            + " " + widget.aadhaarOuter.printLetterBarcodeData.loc
            + " , " + widget.aadhaarOuter.printLetterBarcodeData.pc,
        timestamp: DateTime.now());
    database.insertEntry(entry);
    Toast.show("Successfully inserted", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    AadhaarParseModel aadhaarParseModel = widget.aadhaarOuter.printLetterBarcodeData;
    return Scaffold(body:SafeArea(child:
    Column(mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(width:double.infinity,
              height: 200,color: Color(0xFFcae6e7)
              ,child: SizedBox(width: 30,height: 30,
                child: Image.asset('assets/images/ic_user.png'),)),
          Container(width: double.infinity,
            padding: EdgeInsets.fromLTRB(30,0,30,0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15,),
                Text("Name",style: TextStyle(color: Color(0xFF0e6ba8),fontSize: 22)),
                SizedBox(height: 5,),
                Text(aadhaarParseModel.name),
                SizedBox(height: 15,),
                Text("Aadhaar Number",style: TextStyle(color: Color(0xFF0e6ba8),fontSize: 22)),
                SizedBox(height: 5,),
                Text(aadhaarParseModel.uid),
                SizedBox(height: 15,),
                Text("DOB",style: TextStyle(color: Color(0xFF0e6ba8),fontSize: 22)),
                SizedBox(height: 5,),
                Text(aadhaarParseModel.dob),
                SizedBox(height: 15,),
                Text("Address",style: TextStyle(color: Color(0xFF0e6ba8),fontSize: 22)),
                SizedBox(height: 5,),
                Text(aadhaarParseModel.house + " " + aadhaarParseModel.street
                    + " " + aadhaarParseModel.loc + " , " + aadhaarParseModel.pc)
              ],),),
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

        ]),));
  }
}