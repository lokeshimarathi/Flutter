import 'package:ayushvi/navigation_screens/chat.dart';
import 'package:ayushvi/navigation_screens/doctors.dart';
import 'package:ayushvi/navigation_screens/records.dart';
import 'package:ayushvi/navigation_screens/home.dart';
import 'package:ayushvi/src/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }

}

 class _Home extends State<StatefulWidget>{
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: NavBar(),
      body:IndexedStack(
        children: [
         HomeScreen(),
          Doctors(),
          Records(),
          Chat(),
        ],
        index: pageIndex,
      ),
      bottomNavigationBar: Container(
        height: 90.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2.0,
              blurRadius: 14.0,
              //offset: Offset()
              color: Colors.grey
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(14.0)),
          child: BottomNavigationBar(
            currentIndex: pageIndex,
            onTap: (newIndex){
              setState(() {
                pageIndex = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(backgroundColor:Colors.white, icon: Icon(Icons.home, ), label: 'Home',  ),
              BottomNavigationBarItem(backgroundColor:Colors.white,icon: FaIcon(FontAwesomeIcons.userDoctor,), label: 'Doctors',),
              BottomNavigationBarItem(backgroundColor:Colors.white,icon: Icon(Icons.work,), label: 'Records', ),
              BottomNavigationBarItem(backgroundColor:Colors.white,icon: Icon(Icons.chat,), label: 'Chat',),
            ],

            selectedItemColor: Color(0xff681312),
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            unselectedLabelStyle: TextStyle(
              fontSize: 14.0,
              fontFamily: 'HelveticaNeueMedium',
              color: Colors.grey
            ),
            selectedLabelStyle: TextStyle(
                fontSize: 14.0,
                fontFamily: 'HelveticaNeueMedium',
               color: Color(0xff681312),
            ),

          ),
        ),
      ),
    );
  }

 }