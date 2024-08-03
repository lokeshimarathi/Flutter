import 'dart:async';

import 'package:ayushvi/home.dart';
import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:ayushvi/src/contents/contents.dart';
import 'package:ayushvi/src/widgets/round_edge_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountSuccessful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AccountSuccessfulState();
  }

}

class _AccountSuccessfulState extends State<AccountSuccessful>{
  double _opacity = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 500),(){
      
      setState(() {
        _opacity = 1.0;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    AppResponsive appResponsive = AppResponsive(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Contents.primaryBackgroundColor,
        padding: EdgeInsets.only( top: appResponsive.responsiveLengthForHeight(40.0), left: appResponsive.responsiveLengthForWidth(20.0), right:appResponsive.responsiveLengthForWidth(20.0)  ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: appResponsive.responsiveContent(50.0, 50.0).first,
              width: appResponsive.responsiveContent(50.0, 50.0).first,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xffE7E7EA),
                  )),

              child: FittedBox(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_outlined, // Corrected the icon name
                    size: 21,
                    color: Color(0Xff545A6B),
                  ),
                ),
              ),
            ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedOpacity(opacity: _opacity,
                duration: Duration(seconds: 2),
                child: Image.asset('assets/images/AccountSuccessfullIcon.png', width: appResponsive.responsiveLengthForWidth(239.2), height: appResponsive.responsiveLengthForHeight(230.0),)),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(48.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0,),
                        child: SizedBox(
                          width: appResponsive.responsiveLengthForWidth(262.0),
                          height: appResponsive.responsiveLengthForHeight(33.0) ,
                          child: FittedBox(
                            child: Text(
                              'Account Successful',
                              style: TextStyle(
                                fontFamily: 'HelveticaNeue-Regular',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0B132B),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForWidth(12.0),),
                        child: SizedBox(
                          height: appResponsive.responsiveLengthForHeight(65.0),
                          width: appResponsive.responsiveLengthForWidth(332.0),
                          child: FittedBox(
                            child: Text(
                              "Account Completed Successful. We are good\nthat you use oue services. Find the best doctor\nin your neighbourhood now with complete.",
                              style: TextStyle(
                                fontFamily: 'HelveticaNeue-Regular',
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff858995),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Padding(padding: EdgeInsets.only(bottom: appResponsive.responsiveLengthForHeight(20.0)), child: RoundEdgeButton(
              child: SizedBox(
                height: appResponsive.responsiveLengthForHeight(22.0),
                width: appResponsive.responsiveLengthForWidth(112.0),
                child: FittedBox(
                  child: Text(
                    "Let's Explore",
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              callback: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));

              },
              width: AppResponsive(context).responsiveContent(56.0, 388.0).last,
              height: AppResponsive(context).responsiveContent(56.0, 388.0).first,
              backgroundColor:Color(0xff681312),
            ),),

          ],
        ),
      )
    );
  }

}