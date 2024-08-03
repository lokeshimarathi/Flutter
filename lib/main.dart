import 'package:ayushvi/home.dart';
import 'package:ayushvi/register.dart';
import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:ayushvi/splash_screen.dart';
import 'package:ayushvi/src/contents/contents.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_){
    runApp(const Ayushvi());
  });
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
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontFamily: 'HelveticaNeueMedium',
              fontSize: 30.0,
              color: Color(0xff0B132B)
          ),
          headlineSmall: TextStyle(
              fontSize: 16.0,
              fontFamily: 'HelveticaNeueMedium',
              color: Color(0xFF858995)
          ),

        )
      ),
      home: SplashScreen(),
    );
  }

}