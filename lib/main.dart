import 'package:awesome/responsiveness/app_responsive.dart';
import 'package:awesome/splash_screen.dart';
import 'package:awesome/contents/awesome_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){

  //App initialization check
  WidgetsFlutterBinding.ensureInitialized();

  //Preferring portrait orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(const Awesome());
}

class Awesome extends StatelessWidget{
  const Awesome({super.key});

  @override
  Widget build( BuildContext context){
    AppResponsive appResponsive = AppResponsive(context);
    return  MaterialApp(
      title: 'Awesome',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         textTheme:  TextTheme(
           headlineLarge: TextStyle(
            fontFamily: 'Inter-SemiBold',
             color: AwesomeColors.black,
             fontSize: appResponsive.responsiveText(24.0),
           ),
           bodySmall:  TextStyle(
             fontFamily: 'Inter-Regular',
             color: AwesomeColors.grey,
             fontSize:appResponsive.responsiveText(14.0),
           )
         )
      ),
      home: const SplashScreen(),
    );
  }
}