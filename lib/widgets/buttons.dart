import 'package:awesome/contents/awesome_colors.dart';
import 'package:awesome/responsiveness/app_responsive.dart';
import 'package:flutter/material.dart';

TextButton textButton(String text, void Function() callback, double width, double height, context){
  AppResponsive appResponsive = AppResponsive(context);
  return TextButton(
      onPressed: callback,
      child: SizedBox(
          width: appResponsive.responsiveForWidth(width),
          height: appResponsive.responsiveForHeight(height),
          child: FittedBox(
              child: Text(
                text, style: Theme.of(context).textTheme.headlineLarge!.
                copyWith(fontSize: 16.0, color: AwesomeColors.grey),)))
  );
}

SizedBox elevatedButton(String text, void Function() callback, double width, double height, context, Color backgroundColor){
  AppResponsive appResponsive = AppResponsive(context);
  return SizedBox(
    width: appResponsive.responsiveForWidth(width),
    height: appResponsive.responsiveForHeight(height),
    child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor
        ),
        child: FittedBox(
            child: Text(
              text, style: Theme.of(context).textTheme.headlineLarge!.
            copyWith(fontSize: 16.0, color: AwesomeColors.white),))
    ),
  );
}