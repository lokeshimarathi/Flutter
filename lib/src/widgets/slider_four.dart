import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SliderFour extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 388.0,
      height: 178.0,
      margin: EdgeInsets.only(right: 4.0),
      child: Stack(
        children: [
          Container(
            width: 388.0,
            height: 182.0,

            decoration: BoxDecoration(
                color:Color(0xffEFE7E6),
                borderRadius: BorderRadius.circular(24.0)
            ),
          ),
          Positioned(
              top: 20.0,
              left: 230.0,
              right: 20.0,
              child: Image.asset('assets/images/LadyDoctor.png', width: 138.0, height: 170.0, )),
          Positioned(
              top: 20.9,
              left: 21.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(FontAwesomeIcons.fileWaveform, size: 25.16, color: Color(0xff681312),),
                  Padding(padding: EdgeInsets.only(top: 11.0),
                    child: SizedBox(
                      width: 250.0,
                      child: Text('Promotions • Q&A sessions •  Panel Discussions • Camps Live Webinars', style: TextStyle(
                          fontSize: 15.5,
                          fontFamily: 'HelveticaNeue-Regular',
                          overflow: TextOverflow.fade,
                          color: Color(0xff171B29)
                      ),),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0, ),
                    child: SizedBox(
                      width: 84.0,
                      height: 26.0,
                      child: ElevatedButton(
                        onPressed: (){

                        },
                        child: Text(
                          'View Details',
                          style: TextStyle(
                              fontSize: 6.0,
                              color: Colors.white
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff681312),

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