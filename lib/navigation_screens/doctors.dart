import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctors extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DoctorsState();
  }

}
class DoctorsState extends State<Doctors>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('Doctors'),
        ),
      ),
    );
  }

}