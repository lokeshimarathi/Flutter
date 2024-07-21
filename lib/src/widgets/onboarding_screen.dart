import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget{
   final String title;
   final String description;
  const OnboardingScreen({super.key,  required this.title, required this.description});
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 130.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/OnboardScreenIconOne.png', fit: BoxFit.contain, width: 310.0, height: 314.0,),
               Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(title, style: const TextStyle(
                  fontFamily: 'HelveticaNeueMedium',
                  fontSize: 30.0,
                   color: Color(0xff0B132B)
                ),
                textAlign: TextAlign.center,),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: Text(description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'HelveticaNeueMedium',
                    color: Color(0xFF858995)
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}