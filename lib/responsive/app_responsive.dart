import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:flutter/cupertino.dart';

class AppResponsive{
  static const double _height = 926.0;
  static const double _width = 428.0;
  BuildContext context;


 AppResponsive(this.context);



  /// To make responsive Texts
  double responsiveText(double textSize){
    double ratio = _height / _width;
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;

    if(contextHeight > contextWidth){
        double contextRatio = contextHeight/contextWidth;
        double responsiveTextSize = (contextRatio/ratio) * textSize;
        return responsiveTextSize;

    }
    else if(contextWidth>contextHeight){
        double contextRatio = contextWidth/contextHeight;
        print(contextRatio);
        double responsiveTextSize = (contextRatio/ratio) * textSize;
        print(contextRatio);
        return responsiveTextSize;

    }
    else{
      double contextRatio = contextWidth/contextHeight;
      double responsiveTextSize = (contextRatio/ratio) * textSize;
      return responsiveTextSize;
    }

  }

/// To make responsive Contents
 Set<double> responsiveContent(double height, double width ){
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;

    double heightRatio = height / _height;
    double widthRatio = width / _width;

    double contentHeight = heightRatio * contextHeight;
    double contentWidth = widthRatio * contextWidth;

    return {contentHeight, contentWidth};
}


/// To make responsive Length for Height
 double responsiveLengthForHeight(double length){
   double contextHeight = MediaQuery.of(context).size.height;

   double lengthRatio = length/_height;
   double responsiveLength = contextHeight * lengthRatio;


    return responsiveLength;
 }

  /// To make responsive Length for Width
  double responsiveLengthForWidth(double length){
    double contextHeight = MediaQuery.of(context).size.width;

    double lengthRatio = length/_width;
    double responsiveLength = contextHeight * lengthRatio;


    return responsiveLength;
  }
}