import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Records extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RecordsState();
  }

}
class RecordsState extends State<Records>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('Records'),
        ),
      ),
    );
  }

}