import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget{
   final String title;
   final String description;
  const OnboardingScreen({super.key,  required this.title, required this.description});
  @override
  Widget build(BuildContext context){
    final double _windowHeight =  MediaQuery.of(context).size.height;
    final double _windowWidth = MediaQuery.of(context).size.width;
    final AppResponsive responsive = AppResponsive(context);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/OnboardScreenIconOne.png', fit: BoxFit.contain, width: responsive.responsiveContent(324.0, 310.0).last, height: responsive.responsiveContent(324.0, 310.0).first,),
            Padding(
              padding:  EdgeInsets.only(top:responsive.responsiveLengthForHeight(43.0)),
              child: SizedBox(
                width: responsive.responsiveContent(73.0, 282.0).last,
                height: responsive.responsiveContent(73.0, 282.0).first,
                child: FittedBox(
                  child: Text(title, 
                    style: Theme.of(context).textTheme.headlineLarge,
                    maxLines: 2,
                    textAlign: TextAlign.center,),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: responsive.responsiveLengthForHeight(42.0),),
              child: SizedBox(
                width: responsive.responsiveContent(65.0, 310.0).last,
                height: responsive.responsiveContent(65.0, 310.0).first,
                child: FittedBox(
                  child: Text(description,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.headlineSmall),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}