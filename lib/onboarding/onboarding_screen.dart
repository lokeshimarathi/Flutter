import 'package:awesome/authentication/phone_number.dart';
import 'package:awesome/contents/awesome_colors.dart';
import 'package:awesome/contents/contents.dart';
import 'package:awesome/responsiveness/app_responsive.dart';
import 'package:awesome/widgets/buttons.dart';
import 'package:awesome/widgets/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget{
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentOnboardingIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    AppResponsive appResponsive = AppResponsive(context);
    PageController onboardingPageController = PageController();

    return Scaffold(
           body: Container(
             color: AwesomeColors.silverGrey,
             child: Padding(
               padding: EdgeInsets.only(bottom: appResponsive.responsiveForHeight(28.0)),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   SizedBox(
                 width: double.infinity,
                 height: appResponsive.responsiveForHeight(689.0),
                     child: PageView(
                       controller: onboardingPageController,
                       onPageChanged: (newIndex){
                         setState(() {
                           currentOnboardingIndex = newIndex;
                         });
                       },
                       children: [
                         SizedBox(
                             width: double.infinity,
                             height: appResponsive.responsiveForHeight(689.0),
                             child: onboarding('assets/images/OnboardingImageOne.png', Contents.firstOnboardingTitle, Contents.firstOnboardingDescription, context)),
                         SizedBox(
                             width: double.infinity,
                             height: appResponsive.responsiveForHeight(689.0),
                             child: onboarding('assets/images/OnboardingImageTwo.png', Contents.secondOnboardingTitle, Contents.secondOnboardingDescription, context)),
                         SizedBox(
                             width: double.infinity,
                             height: appResponsive.responsiveForHeight(689.0),
                             child: onboarding('assets/images/OnboardingImageThree.png', Contents.thirdOnboardingTitle, Contents.thirdOnboardingDescription, context)),
                       ],
                     ),
                   ),
                   SmoothPageIndicator(
                       controller: onboardingPageController,
                       count: 3,
                       effect: const ExpandingDotsEffect(
                         expansionFactor: 4,
                         activeDotColor: Color(0XFFD9D9D9),
                         dotColor: Colors.white,
                         dotWidth: 8.0,
                         dotHeight: 8.0,
                       ),
                   ),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveForWidth(20.0)),
                     child:  currentOnboardingIndex < 2 ? Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         textButton('Skip',
                                 (){
                               onboardingPageController.jumpToPage(2);
                             },
                             33.0,
                             19.0,
                             context),
                         elevatedButton('Next', (){
                           onboardingPageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.linear);
                         }, 100.0, 50.0, context, AwesomeColors.black)
                       ],
                     ) : elevatedButton('Start', (){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PhoneNumber()));
                     }, 390.0, 50.0, context, AwesomeColors.black)
                   )
                 ],
               ),
             ),
           ),
    );
  }
}