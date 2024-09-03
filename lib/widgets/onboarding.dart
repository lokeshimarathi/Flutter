import 'package:flutter/cupertino.dart';
import 'package:awesome/responsiveness/app_responsive.dart';
import 'package:flutter/material.dart';

Widget onboarding(String imagePath, String title, String description, BuildContext context){
  AppResponsive appResponsive = AppResponsive(context);
  return Container(
       width:double.infinity,
       height: appResponsive.responsiveForHeight(689.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Image.asset(imagePath, width: double.infinity, height: appResponsive.responsiveForHeight(523.0), fit: BoxFit.fill,),
           SizedBox(
             width: appResponsive.responsiveForWidth(430.0),
             child: Center(child: FittedBox(child: Text(title, style: Theme.of(context).textTheme.headlineLarge))),
           ),
           SizedBox(
             width: appResponsive.responsiveForWidth(383.0),
             child: Center(child: Text(description, style: Theme.of(context).textTheme.bodySmall!.copyWith(overflow: TextOverflow.fade,), maxLines: 6, textAlign: TextAlign.center,), ),
           )

         ],
       ),
  );
}