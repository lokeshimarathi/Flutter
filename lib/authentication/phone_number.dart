import 'package:awesome/contents/awesome_colors.dart';
import 'package:awesome/main.dart';
import 'package:awesome/responsiveness/app_responsive.dart';
import 'package:awesome/widgets/component_title_and_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget{

  @override
  State<PhoneNumber> createState(){
    return _PhoneNumberState();
  }
}

class _PhoneNumberState extends State<PhoneNumber>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    AppResponsive appResponsive = AppResponsive(context);
    return Scaffold(
      body: Container(
        color: AwesomeColors.silverGrey,
        padding: EdgeInsets.only(top:appResponsive.responsiveForHeight(40.0), left: appResponsive.responsiveForWidth(20.0), right: appResponsive.responsiveForWidth(20.0), bottom: appResponsive.responsiveForHeight(160.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            componentTitleAndDescription(context, title: 'Phone Number', description: 'Please enter your phone number for verification. We will use it to send an OTP. Do not share the OTP with others.', titleHeight: 30.0, descriptionHeight: 100.0, ),
            Padding(
              padding:  EdgeInsets.only(top: appResponsive.responsiveForHeight(35.0)),
              child: Image.asset('assets/images/PhoneNumberVerificationImage.png', fit: BoxFit.contain, height: appResponsive.responsiveForHeight(286.0), width: appResponsive.responsiveForWidth(394.0),),
            ),
            Padding(
                padding: EdgeInsets.only(top: )

            )

          ],
        ),

      ),
    );
  }

}