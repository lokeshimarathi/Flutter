

import 'package:flutter/cupertino.dart';

class AppResponsive {

  /// Design Sizes
  static const double designScreenHeight = 932.0;
  static const double designScreenWidth = 430.0;
  late double windowHeight;
  late double windowWidth;


  /// Window Sizes
 AppResponsive(BuildContext context){
   windowHeight = MediaQuery.of(context).size.height;
   windowWidth = MediaQuery.of(context).size.width;
 }


 /// Responsive Length for Height
  double responsiveForHeight(double contentHeight){
   double ratio =  contentHeight /designScreenHeight;
   double responsiveHeight = ratio * windowHeight;
    return responsiveHeight;
  }


  /// Responsive Length for Width
  double responsiveForWidth(double contentWidth){
    double ratio =  contentWidth /designScreenWidth;
    double responsiveWidth= ratio * windowWidth;
    return responsiveWidth;
  }

  /// Responsive Text
  double responsiveText(textSize){
   double ratio = textSize/designScreenHeight;
   double responsiveText = ratio * windowHeight;
   return responsiveText;
  }
}