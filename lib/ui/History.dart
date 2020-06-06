import 'package:aadhaartracer/common/moor_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HistoryState();
  }
}

class HistoryState extends State<HistoryScreen>
{

  List<Entrie> _entries = <Entrie>[];
  var database;
  var formatter;

  @override
  void initState() {
    getProjectDetails();
  }

  void getProjectDetails() async {
    database = Provider.of<MoorDatabase>(context,
        listen: false);
    _entries = await database.getAllEntries();
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(appBar: AppBar(
        title: Text("History"),backgroundColor:  Color(0xFF0e6ba8)),
        body: Container(child:
        ListView.builder(itemBuilder:(context, position){
          return Container(margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border:
              Border.all(color: Colors.black)),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(_entries[position].idType,
                    style: TextStyle(fontSize: 14),textAlign:TextAlign.left),
                  Container(margin: EdgeInsets.all(5)),
                  Text(_entries[position].idNumber,
                      style: TextStyle(fontSize: 20),textAlign:TextAlign.left),
                  Container(margin: EdgeInsets.all(5),),
                  Text(_entries[position].address,
                      style: TextStyle(fontSize: 20),textAlign:TextAlign.left),
                  Container(margin: EdgeInsets.all(5),),
                  Text(new DateFormat.yMEd().add_jms().format( _entries[position].timestamp),
                      style: TextStyle(fontSize: 12),textAlign: TextAlign.left),
                ],));
        },itemCount: _entries.length),
        )));
  }

}