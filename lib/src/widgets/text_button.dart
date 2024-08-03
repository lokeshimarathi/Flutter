import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget{
  String text;
  void Function() callback;
  double fontSize;
  Color fontColor;
 CustomTextButton({required this.text, required this.callback, this.fontSize = 18.0, this.fontColor = const Color(0xff545A6B)});
  
  @override
  Widget build(BuildContext context){
    AppResponsive responsive = AppResponsive(context);
    return TextButton(
      onPressed: callback,
      child: SizedBox(
        width:responsive.responsiveLengthForWidth(33.0),
        height: responsive.responsiveLengthForHeight(24.0),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(
              color: fontColor,
              fontSize: fontSize,
              fontFamily: 'HelveticaNeueMedium'
            ),
          ),
        ),
      ),

    );
  }
}