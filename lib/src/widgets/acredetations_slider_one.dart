import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AcredetationsSliderOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AppResponsive appResponsive = AppResponsive(context);
   return Stack(
     children: [
       Container(
         width: appResponsive.responsiveLengthForWidth(388.0),
         height: appResponsive.responsiveLengthForHeight(140.0),
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(14.0),
           border: Border.all(
             width: 1.0,
             color: Color(0xff925039)
           ),
         ),
       ),
       Positioned(
           top: appResponsive.responsiveLengthForHeight(20.0),
           right: appResponsive.responsiveLengthForWidth(20.0),
           left: appResponsive.responsiveLengthForWidth(20.0),
           child: Image.asset('assets/images/OnboardingBar.png', width: appResponsive.responsiveLengthForWidth(388.0), height: appResponsive.responsiveLengthForHeight(19.72), fit: BoxFit.fill,)),

       Positioned(
           top: appResponsive.responsiveLengthForHeight(60.0),
           left: appResponsive.responsiveLengthForWidth(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                   children: [
                     SizedBox(
                         width:appResponsive.responsiveLengthForWidth(20.0),
                         height: appResponsive.responsiveLengthForHeight(20.0),
                         child: FittedBox(
                             alignment: Alignment.centerLeft,
                             child: FaIcon(FontAwesomeIcons.trophy, color:  Color(0xff925039), size: 20.0,))),
                     Padding(
                       padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(1.0)),
                       child: Container(
                         width: appResponsive.responsiveLengthForWidth(200.0),
                         height: appResponsive.responsiveLengthForHeight(20.0),
                         alignment: Alignment(-1.0,0.0),
                         child: FittedBox(
                           alignment: Alignment.centerLeft,
                           child: Text('Ayushvi receives Ayurvedic Accreditation ',
                             textAlign: TextAlign.left,
                             style: TextStyle(
                             color:  Color(0xff925039),
                             fontSize: 14.5,
                             fontFamily: 'HelveticaNeue-Regular',
                             overflow: TextOverflow.fade,
                               fontWeight: FontWeight.bold
                           ),),
                         ),
                       ),
                     )
                   ],
                   ),
               Container(
                 width: appResponsive.responsiveLengthForWidth(200.0),
                 height: appResponsive.responsiveLengthForHeight(20.0),
                 alignment: Alignment(-1.0,0.0),
                 child: FittedBox(
                   alignment: Alignment.centerLeft,
                   child: Text('Commission (AAC) Approval ', style: TextStyle(
                     color:  Color(0xff925039),
                     fontSize: 14.5,
                     fontFamily: 'HelveticaNeue-Regular',
                     overflow: TextOverflow.fade,
                     fontWeight: FontWeight.bold
                   ),),
                 ),
               ),
               Padding(
                 padding:  EdgeInsets.all(appResponsive.responsiveLengthForHeight(8.0)),
                 child: Container(
                   width: appResponsive.responsiveLengthForWidth(100.0),
                   height: appResponsive.responsiveLengthForHeight(20.0),
                   alignment: Alignment(-1.0,0.0),
                   child: FittedBox(
                     child: Text('Easy Ayurveda', style: TextStyle(
                       color: Color(0xff171B29),
                       fontSize: 10.5,
                       fontWeight: FontWeight.bold,
                       fontFamily: 'HelveticaNeue-Regular',
                       overflow: TextOverflow.fade,
                     ),),
                   ),
                 ),
               ),
             ],
           ),
       ),
       Positioned(
           bottom: appResponsive.responsiveLengthForHeight(-12.0),
           right: appResponsive.responsiveLengthForWidth(60.0),
           child: Image.asset('assets/images/AccreditationMark.png', width: appResponsive.responsiveLengthForWidth(70.0), height: appResponsive.responsiveLengthForHeight(70.0),)),
       Positioned(
           bottom: appResponsive.responsiveLengthForHeight(20.0),
           right: appResponsive.responsiveLengthForWidth(20.0),
           child: Container(
             height: appResponsive.responsiveLengthForWidth(25.0),
             width: appResponsive.responsiveLengthForWidth(25.0),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25.0),
               color: Color(0xffEFE7E6)
             ),
             alignment: Alignment(0.0,0.0),
             child: FittedBox(
               child: FaIcon(
            Icons.arrow_forward_ios,
                 color: Color(0xff925039),
                 size: 15,
               ),
             ),
           ))
     ],
   );
  }

}