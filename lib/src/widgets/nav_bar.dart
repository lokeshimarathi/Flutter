import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AppResponsive appResponsive = AppResponsive(context);
    return Drawer(
      backgroundColor: Colors.white,
      width: appResponsive.responsiveLengthForWidth(300.0),

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(20.0), vertical: appResponsive.responsiveLengthForHeight(20.0)),
        child: ListView(
          children: [
           Row(
             children: [
               Container(
                 height: appResponsive.responsiveContent(50.0, 50.0).first,
                 width: appResponsive.responsiveContent(50.0, 50.0).first,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50.0),
                     border: Border.all(
                       width: 1.0,
                       color: Color(0xffE7E7EA),
                     )),

                 child: FittedBox(
                   child: IconButton(
                     onPressed: () {
                       Scaffold.of(context).closeDrawer();
                     },
                     icon: Icon(
                       Icons.arrow_back_outlined,
                       size: 21,
                       color: Color(0Xff545A6B),
                     ),
                   ),
                 )

               ),
               Padding(padding: EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(12.0)),
               child: SizedBox(
                 width: appResponsive.responsiveLengthForWidth(59.0),
                 height: appResponsive.responsiveLengthForHeight(25.0),
                 child: FittedBox(
                   child: Text('Home',
                   style: TextStyle(
                     fontFamily: 'HelveticaNeue-Regular',
                     fontSize: 20.0,
                     fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
               ),
               ),
             ],
           ),
           Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(32.0), left: appResponsive.responsiveLengthForWidth(22.0)),
           child: Row(
             children: [
               ClipRRect(
                   borderRadius: BorderRadius.circular(14.0),
                   child: Image.asset('assets/images/ArchanaDeviProfileImage.jpg', height: appResponsive.responsiveLengthForHeight(60.0), width: appResponsive.responsiveLengthForWidth(60.0),)),

                Padding(padding: EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(16.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: appResponsive.responsiveLengthForWidth(120.0),
                      height: appResponsive.responsiveLengthForHeight(22.0),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        child: Text('Archana Devi', style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B)
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: appResponsive.responsiveLengthForWidth(86.0),
                      height: appResponsive.responsiveLengthForHeight(16.0),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        child: Text('UID: 1287391', style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'HelveticaNeue-Regular',
                            color: Color(0xff858995)
                        ),),
                      ),
                    ),

                  ],
                ),
                )
             ],
           ),
           ),
            Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(25.5)),
            child: Container(
              width: appResponsive.responsiveLengthForWidth(245.0),
              height: 1,
              color: Color(0xff858995),
            ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(24.5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                        child: Container(
                          height: appResponsive.responsiveLengthForHeight(40.0),
                          width: appResponsive.responsiveLengthForWidth(40.0),
                          decoration: BoxDecoration(
                            color: Color(0xffEFE7E6),
                            borderRadius: BorderRadius.circular(14.0)
                          ),
                          child: Center(
                           child: SizedBox(
                             height: appResponsive.responsiveLengthForHeight(18.57),
                             width: appResponsive.responsiveLengthForWidth(18.57),
                             child: FittedBox(
                               child: Icon(
                                  Icons.edit,
                                 size: 18.57,
                                 color: Color(0xff681312),
                                ),
                             ),
                           )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: appResponsive.responsiveLengthForHeight(20.0),
                        width: appResponsive.responsiveLengthForWidth(87.0),
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          child: Text('Edit Profile', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                          ),),
                        ),
                      ),
                    ],

                  ),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(28.0)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                          child: Container(
                            height: appResponsive.responsiveLengthForHeight(40.0),
                            width: appResponsive.responsiveLengthForWidth(40.0),
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(18.57),
                                  width: appResponsive.responsiveLengthForWidth(18.57),
                                  child: FittedBox(
                                    child: FaIcon(
                                      FontAwesomeIcons.user,
                                      size: 18.57,
                                      color: Color(0xff681312),
                                    )

                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          width: appResponsive.responsiveLengthForWidth(87.0),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Personal Details', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                            ),),
                          ),
                        ),
                      ],

                    ),),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(28.0)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                          child: Container(
                            height: appResponsive.responsiveLengthForHeight(40.0),
                            width: appResponsive.responsiveLengthForWidth(40.0),
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(18.57),
                                  width: appResponsive.responsiveLengthForWidth(18.57),
                                  child: FittedBox(
                                      child: FaIcon(
                                        FontAwesomeIcons.users,
                                        size: 18.57,
                                        color: Color(0xff681312),
                                      )

                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          width: appResponsive.responsiveLengthForWidth(87.0),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Family Members', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                            ),),
                          ),
                        ),
                      ],

                    ),),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(28.0)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                          child: Container(
                            height: appResponsive.responsiveLengthForHeight(40.0),
                            width: appResponsive.responsiveLengthForWidth(40.0),
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(18.57),
                                  width: appResponsive.responsiveLengthForWidth(18.57),
                                  child: FittedBox(
                                      child: FaIcon(
                                        FontAwesomeIcons.stethoscope,
                                        size: 18.57,
                                        color: Color(0xff681312),
                                      )

                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          width: appResponsive.responsiveLengthForWidth(87.0),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Appointments', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                            ),),
                          ),
                        ),
                      ],

                    ),),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(28.0)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                          child: Container(
                            height: appResponsive.responsiveLengthForHeight(40.0),
                            width: appResponsive.responsiveLengthForWidth(40.0),
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(18.57),
                                  width: appResponsive.responsiveLengthForWidth(18.57),
                                  child: FittedBox(
                                      child: FaIcon(
                                        FontAwesomeIcons.bagShopping,
                                        size: 18.57,
                                        color: Color(0xff681312),
                                      )

                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          width: appResponsive.responsiveLengthForWidth(87.0),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Orders', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                            ),),
                          ),
                        ),
                      ],

                    ),),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(28.0)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                          child: Container(
                            height: appResponsive.responsiveLengthForHeight(40.0),
                            width: appResponsive.responsiveLengthForWidth(40.0),
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(18.57),
                                  width: appResponsive.responsiveLengthForWidth(18.57),
                                  child: FittedBox(
                                      child: FaIcon(
                                        FontAwesomeIcons.heart,
                                        size: 18.57,
                                        color: Color(0xff681312),
                                      )

                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          width: appResponsive.responsiveLengthForWidth(87.0),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Favourite', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                            ),),
                          ),
                        ),
                      ],

                    ),),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(28.0)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                          child: Container(
                            height: appResponsive.responsiveLengthForHeight(40.0),
                            width: appResponsive.responsiveLengthForWidth(40.0),
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(18.57),
                                  width: appResponsive.responsiveLengthForWidth(18.57),
                                  child: FittedBox(
                                      child: FaIcon(
                                        FontAwesomeIcons.circleInfo,
                                        size: 18.57,
                                        color: Color(0xff681312),
                                      )

                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          width: appResponsive.responsiveLengthForWidth(87.0),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Subscriptions', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                            ),),
                          ),
                        ),
                      ],

                    ),),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(28.0)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                          child: Container(
                            height: appResponsive.responsiveLengthForHeight(40.0),
                            width: appResponsive.responsiveLengthForWidth(40.0),
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(18.57),
                                  width: appResponsive.responsiveLengthForWidth(18.57),
                                  child: FittedBox(
                                      child: FaIcon(
                                        Icons.notifications_active_outlined,
                                        size: 18.57,
                                        color: Color(0xff681312),
                                      )

                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          width: appResponsive.responsiveLengthForWidth(87.0),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Notifications', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                            ),),
                          ),
                        ),
                      ],

                    ),),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(28.0)),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(22.0), right: appResponsive.responsiveLengthForWidth(17.0)),
                          child: Container(
                            height: appResponsive.responsiveLengthForHeight(40.0),
                            width: appResponsive.responsiveLengthForWidth(40.0),
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(18.57),
                                  width: appResponsive.responsiveLengthForWidth(18.57),
                                  child: FittedBox(
                                      child: FaIcon(
                                        Icons.settings,
                                        size: 18.57,
                                        color: Color(0xff681312),
                                      )

                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          width: appResponsive.responsiveLengthForWidth(87.0),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Settings', style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'HelveticaNeue-Regular',
                              color: Color(0xff0B132B),

                            ),),
                          ),
                        ),
                      ],

                    ),),

                ],
              ),
            )
          ],

        ),
      )
    );
  }

}