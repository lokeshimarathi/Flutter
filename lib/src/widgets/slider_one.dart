import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SliderOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AppResponsive appResponsive = AppResponsive(context);
    
    return Container(
      width: appResponsive.responsiveLengthForWidth(388.0),
      height: appResponsive.responsiveLengthForHeight(182.0),
      margin: EdgeInsets.only(right: 4.0),
      child: Stack(
        children: [
          Container(
            width: appResponsive.responsiveLengthForWidth(388.0),
            height: appResponsive.responsiveLengthForHeight(182.0),
            decoration: BoxDecoration(
                color:Color(0xffEFE7E6),
              borderRadius: BorderRadius.circular(24.0)
            ),
          ),
          Positioned(
              bottom: 0.0,
              right: appResponsive.responsiveLengthForWidth(20.0),
              child: SizedBox(
    width: appResponsive.responsiveLengthForWidth(138.0), height: appResponsive.responsiveLengthForHeight(170.0),
                  child: FittedBox(child: Image.asset('assets/images/LadyDoctor.png', )))),
          Positioned(
              top: appResponsive.responsiveLengthForHeight(20.09),
              left: appResponsive.responsiveLengthForWidth(21.15),
              bottom: appResponsive.responsiveLengthForHeight(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: appResponsive.responsiveLengthForWidth(25.16),
                    height: appResponsive.responsiveLengthForHeight(25.16),
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Icon(FontAwesomeIcons.fileWaveform, size: 25.16, color: Color(0xff681312),),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(11.0)),
                  child: SizedBox(
                    width: appResponsive.responsiveLengthForWidth(203.0),
                    height: appResponsive.responsiveLengthForHeight(65.0),
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Text('Promotions • Q&A sessions • \nPanel Discussions • Camps\nLive Webinars', style: TextStyle(
                        fontSize: 15.5,
                        fontFamily: 'HelveticaNeue-Regular',
                        overflow: TextOverflow.fade,
                        color: Color(0xff171B29)
                      ),),
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(12.0),),
                  child: SizedBox(
                    width: appResponsive.responsiveLengthForWidth(84.0),
                    height: appResponsive.responsiveLengthForHeight(26.0),
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: (){
                      
                        },
                        child: SizedBox(
                          width: appResponsive.responsiveLengthForWidth(62.0),
                          height: appResponsive.responsiveLengthForHeight(14.0),
                          child: FittedBox(
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff681312),
                      
                        ),
                      ),
                    ),
                  ),

                  )


                ],
              ))
        ],
      ),
    );
  }

}