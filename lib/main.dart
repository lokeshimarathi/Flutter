import 'package:ayushvi/splash_screen.dart';
import 'package:ayushvi/src/contents/contents.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ayushvi());
}

class Ayushvi extends StatelessWidget{
  const Ayushvi({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: Contents.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.brown
      ),
      home:const SplashScreen(),
    );
  }

}