import 'package:ayushvi/src/contents/contents.dart';
import 'package:ayushvi/src/widgets/onboarding_screen.dart';
import 'package:ayushvi/src/widgets/round_edge_button.dart';
import 'package:ayushvi/src/widgets/text_button.dart';
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
  bool finalPage = false;

  @override
  Widget build(BuildContext context){

    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
       ),
       child: Stack(

         children: [
           PageView(
             controller: _controller,
             onPageChanged: (index){
               if(index == 3){
                 finalPage = true;
               }
               else{
                 finalPage = false;
               }
               setState(() {
               });
             },
             children: const [
               OnboardingScreen(title: Contents.onboardingScreenTitleOne, description:  Contents.onboardingScreenDescriptionOne,),
               OnboardingScreen(title: Contents.onboardingScreenTitleTwo, description:  Contents.onboardingScreenDescriptionTwo,),
               OnboardingScreen(title: Contents.onboardingScreenTitleThree, description:  Contents.onboardingScreenDescriptionThree,),
               OnboardingScreen(title: Contents.onboardingScreenTitleFour, description:  Contents.onboardingScreenDescriptionFour,),

             ],
           ),
       Padding(padding: EdgeInsets.only(top: 73.0, bottom: 40.0), child:  Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Image.asset('assets/images/OnboardingBar.png', width: double.infinity, height: 19.72, fit: BoxFit.fill,),
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.only(bottom: 20.0),
                 child: Container(

                   child:  SmoothPageIndicator(controller: _controller, count: 4,
                   effect: const ExpandingDotsEffect(
                     expansionFactor: 3,
                     dotWidth: 12.0,
                     dotHeight: 12.0,
                     dotColor: Color(0x40681312),
                     activeDotColor: Color(0xff681312)
                   ),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 10.0),
                 child: Image.asset('assets/images/OnboardingBar.png', width: double.infinity, height: 19.72, fit: BoxFit.fill,),
               ),

               Padding(
                 padding: const EdgeInsets.only(top: 20.0),
                 child: Container(
                   alignment: Alignment(0,0.90),
                   child: !finalPage ? Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CustomTextButton(text: 'Skip', callback: (){
                         _controller.jumpToPage(3);
                       }),
                       RoundEdgeButton(child: Text('Next', style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'HelveticaNeueMedium'),), callback: (){
                         _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                       })
                     ],
                   ): RoundEdgeButton(child: Text('Login', style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.white
                   ),), callback: (){}, width: 388.0 ,),
                 ),
               )
             ],
           )
         ],

       ),)

         ],
       ),
     ),
    );
  }
}