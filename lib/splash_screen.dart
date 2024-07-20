import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ayushvi/welcome_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState(){
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen>{

  // Splash Screen Navigation to Introduction Screen
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){
        return IntroductionScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
              decoration: const BoxDecoration(
                           color: Colors.white
                          ),
              child: Center(
                       child: Image.asset('assets/images/AyushviLogo.png',
                         width: 300,
                         height: 300,
                         fit: BoxFit.contain,
                    ),
        ),
      ),
    );
  }
}