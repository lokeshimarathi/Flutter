import 'package:ayushvi/src/onboarding_screens/onboarding_screen_four.dart';
import 'package:ayushvi/src/onboarding_screens/onboarding_screen_one.dart';
import 'package:ayushvi/src/onboarding_screens/onboarding_screen_three.dart';
import 'package:ayushvi/src/onboarding_screens/onboardingscreen_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget{
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState(){
    return IntroductionScreenState();
  }
}

class IntroductionScreenState extends State<IntroductionScreen>{
  final PageController _controller = PageController();


  @override
  Widget build(BuildContext context){
    
    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         //color: Colors.white
       ),
       child: Stack(
        // alignment: Alignment.center,
         children: [
           PageView(
             controller: _controller,
             children: [
               OnboardingScreenOne(),
               OnboardingScreenTwo(),
               OnboardingScreenThree(),
               OnboardingScreenFour()
             ],
           ),
          Container(

            alignment: const Alignment(0,0.75),
            child:  SmoothPageIndicator(controller: _controller, count: 4, ),
          )
         ],
       ),
     ),
    );
  }
}