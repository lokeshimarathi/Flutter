import 'dart:async';

import 'package:awesome/onboarding/onboarding_screen.dart';
import 'package:awesome/responsiveness/app_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState(){
    return _SplashScreenState();
  }
}




class _SplashScreenState extends State<SplashScreen>{
double logoOpacity = 0.0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// Logo Opacity
    Timer(const Duration(milliseconds: 500,), (){
      setState(() {
        logoOpacity = 1.0;
      });
    });

    /// Navigation to Onboarding Screen
    Timer(const Duration(seconds: 3),(){
      setState(() {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnboardingScreen()));
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    /// Window Sizes
    double  windowHeight = MediaQuery.of(context).size.height;
    double windowWidth = MediaQuery.of(context).size.width;

    /// AppResponsive
    AppResponsive appResponsive = AppResponsive(context);

    // TODO: implement build
    return   Scaffold(
     body: Container(
       width: windowWidth,
       height: windowHeight,
       color: Colors.white,
       child:  Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
            AnimatedOpacity(opacity: logoOpacity,
            duration: Duration(seconds: 2),
            child: Image.asset('assets/images/AwesomeLogo.png', fit: BoxFit.contain, height: appResponsive.responsiveForHeight(100.0), width: appResponsive.responsiveForWidth(200.0),))

         /// Add Signing Image
         ],
       ),
     ),
    );
  }

}