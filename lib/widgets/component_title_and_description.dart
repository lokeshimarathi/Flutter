import 'package:awesome/contents/awesome_colors.dart';
import 'package:awesome/responsiveness/app_responsive.dart';
import 'package:flutter/material.dart';

Column componentTitleAndDescription(BuildContext context,{required String title, String? description, IconData? icon, required double titleHeight,  double? descriptionHeight} ){
 AppResponsive appResponsive = AppResponsive(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: icon != null && description != null ? [
      Icon(
        icon,
        size: appResponsive.responsiveForHeight(25.0),
        color: AwesomeColors.black,
      ),
      Padding(padding: EdgeInsets.only(top: appResponsive.responsiveForHeight(25.0)),
      child: SizedBox(
           width: appResponsive.responsiveForWidth(390.0),
           height: appResponsive.responsiveForHeight(titleHeight),
          child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(title, style: Theme.of(context).textTheme.headlineLarge,))),
      ),
      Padding(padding: EdgeInsets.only(top: appResponsive.responsiveForHeight(11.0)),
      child: SizedBox(
        height:appResponsive.responsiveForHeight(descriptionHeight!),
        width: appResponsive.responsiveForWidth(390.0),
        child: Text(description, style: Theme.of(context).textTheme.bodySmall!.copyWith(overflow: TextOverflow.fade),),
      ),

      )
      
    ] : icon !=null && description == null ? [
      Icon(
        icon,
        size: appResponsive.responsiveForHeight(25.0),
        color: AwesomeColors.black,
      ),
      Padding(padding: EdgeInsets.only(top: appResponsive.responsiveForHeight(25.0)),
        child: SizedBox(
            width: appResponsive.responsiveForWidth(390.0),
            height: appResponsive.responsiveForHeight(titleHeight),
            child: FittedBox(
                alignment: Alignment.centerLeft,
                child: Text(title, style: Theme.of(context).textTheme.headlineLarge,))),
      ),
    ] : [
      Padding(padding: EdgeInsets.only(top: appResponsive.responsiveForHeight(25.0)),
        child: SizedBox(
            width: appResponsive.responsiveForWidth(390.0),
            height: appResponsive.responsiveForHeight(titleHeight),
            child: FittedBox(
                alignment: Alignment.centerLeft,
                child: Text(title, style: Theme.of(context).textTheme.headlineLarge,))),
      ),
      Padding(padding: EdgeInsets.only(top: appResponsive.responsiveForHeight(11.0)),
        child: SizedBox(
          height:appResponsive.responsiveForHeight(descriptionHeight!),
          width: appResponsive.responsiveForWidth(390.0),
          child: Text(description!, style: Theme.of(context).textTheme.bodySmall!.copyWith(overflow: TextOverflow.fade, ),),
        ),

      )
    ],
  );
}