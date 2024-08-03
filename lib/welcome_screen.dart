import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:ayushvi/sign_in.dart';
import 'package:ayushvi/src/contents/contents.dart';
import 'package:ayushvi/src/widgets/onboarding_screen.dart';
import 'package:ayushvi/src/widgets/round_edge_button.dart';
import 'package:ayushvi/src/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() {
    return IntroductionScreenState();
  }
}

class IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _controller = PageController();
  bool finalPage = false;

  @override
  Widget build(BuildContext context) {
    final double _windowHeight =  MediaQuery.of(context).size.height;
    final double _windowWidth = MediaQuery.of(context).size.width;
    final AppResponsive responsive = AppResponsive(context);
    return Scaffold(
      body: Container(
        height:_windowHeight,
        width: _windowWidth,
        color: Contents.primaryBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: responsive.responsiveLengthForHeight(33.0)),
              child:  Image.asset(
                'assets/images/OnboardingBar.png',
                width: responsive.responsiveContent(19.72, 428).last,
                height: responsive.responsiveContent(19.72, 428).first,
                fit: BoxFit.fill,
              ),),
              Padding(
                  padding: EdgeInsets.only(top: responsive.responsiveLengthForHeight(37.28),
                  left: responsive.responsiveLengthForWidth(59.0),
                  right: responsive.responsiveLengthForWidth(59.0),
                  ),
                  child: Container(
                    height:responsive.responsiveContent(547.0, 310.0).first,
                    width: responsive.responsiveContent(547.0, 310.0).last,
                    child: PageView(
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
                      children: [
                        OnboardingScreen(title: Contents.onboardingScreenTitleOne, description: Contents.onboardingScreenDescriptionOne),
                        OnboardingScreen(title: Contents.onboardingScreenTitleTwo, description: Contents.onboardingScreenDescriptionTwo),
                        OnboardingScreen(title: Contents.onboardingScreenTitleThree, description: Contents.onboardingScreenDescriptionThree),
                        OnboardingScreen(title: Contents.onboardingScreenTitleFour, description: Contents.onboardingScreenDescriptionFour)


                      ],
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.only(top: responsive.responsiveLengthForHeight(40.0)),
              child: SmoothPageIndicator(
                controller: _controller,
                onDotClicked: (index){
                  _controller.jumpToPage(index);
                },
                count: 4,
                effect: ExpandingDotsEffect(
                  expansionFactor: 3.0,
                  dotColor: Contents.secondaryColor,
                  activeDotColor: Contents.primaryColor,
                  dotHeight:responsive.responsiveLengthForHeight(12.0),
                  dotWidth:responsive.responsiveLengthForHeight(12.0),
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(top: responsive.responsiveLengthForHeight(38.94)),
                child:  Image.asset(
                  'assets/images/OnboardingBar.png',
                  width: responsive.responsiveContent(19.72, 428).last,
                  height: responsive.responsiveContent(19.72, 428).first,
                  fit: BoxFit.fill,
                ),),
              Padding(
                padding: EdgeInsets.only(top: responsive.responsiveLengthForHeight(39.34)),
                child: Container(

                  child: !finalPage
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextButton(
                          fontSize: 21.6,
                          text: 'Skip',
                          callback: () {
                            _controller.jumpToPage(3);
                          }),
                      RoundEdgeButton(
                        width: responsive.responsiveContent(56.0, 120.0).last,
                          height: responsive.responsiveContent(56.0, 120.0).first,
                          child: SizedBox(
                            width:responsive.responsiveLengthForWidth(33.0),
                            height: responsive.responsiveLengthForHeight(24.0),
                            child: FittedBox(
                              child: const Text(
                                'Next',
                                style: TextStyle(
                                    fontSize: 21.6,
                                    color: Contents.lightTextColor,
                                    fontFamily:
                                    'HelveticaNeueMedium'),
                              ),
                            ),
                          ),
                          callback: () {
                            _controller.nextPage(
                                duration: const Duration(
                                    milliseconds: 500),
                                curve: Curves.easeIn);
                          })
                    ],
                  )
                      : RoundEdgeButton(
                    child: SizedBox(
                      width:responsive.responsiveLengthForWidth(48.0),
                      height: responsive.responsiveLengthForHeight(22.0),
                      child: FittedBox(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                       callback: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                      },
                    width: responsive.responsiveContent(56.0, 388.0).last,
                    height: responsive.responsiveContent(56.0, 388.0).first,
                  ),
                ),
              )


            ],
        ),
      ),
    );
  }
}
