import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      backgroundColor: Colors.white,
      width: 300.0,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: ListView(

          children: [
           Row(
             children: [
               Container(
                 height: 36.0,
                 width: 36.0,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(36.0),
                     border: Border.all(
                       width: 1.0,
                       color: Color(0xffE7E7EA),
                     )),

                 child: IconButton(
                   onPressed: () {
                     Scaffold.of(context).closeDrawer();
                   },
                   icon: Icon(
                     Icons.arrow_back_outlined, // Corrected the icon name
                     size: 14.81,
                     color: Color(0Xff545A6B),
                   ),
                 ),
               ),
               Padding(padding: EdgeInsets.symmetric(horizontal: 12.0),
               child: Text('Home',
               style: TextStyle(
                 fontFamily: 'HelveticaNeue-Regular',
                 fontSize: 20.0,
                 fontWeight: FontWeight.bold
               ),
               ),
               ),
             ],
           ),
           Padding(padding: EdgeInsets.only(top: 32.0, left: 22.0),
           child: Row(
             children: [
               ClipRRect(
                   borderRadius: BorderRadius.circular(14),
                   child: Image.asset('assets/images/ArchanaDeviProfileImage.jpg', height: 60.0, width: 60.0,)),

                Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Archana Devi', style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'HelveticaNeue-Regular',
                      color: Color(0xff0B132B)
                    ),),
                    Text('UID: 1287391', style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'HelveticaNeue-Regular',
                        color: Color(0xff858995)
                    ),),

                  ],
                ),
                )
             ],
           ),
           ),
            Padding(padding: EdgeInsets.only(top: 25.5),
            child: Container(
              width: 245,
              height: 1,
              color: Color(0xff858995),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.5),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xffEFE7E6),
                              borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                             child: Icon(
                                Icons.edit,
                               size: 18.57,
                               color: Color(0xff681312),
                              )
                            ),
                          ),
                        ),
                        Text('Edit Profile', style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'HelveticaNeue-Regular',
                            color: Color(0xff0B132B),

                        ),),
                      ],

                    ),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.user,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Personal Details', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),
                      ],

                    ),),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.users,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Family Members', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),

                      ],

                    ),),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.stethoscope,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Appointments', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),
                      ],

                    ),),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.bagShopping,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Orders', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),
                      ],

                    ),),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.heart,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Favourite', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),
                      ],

                    ),),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.bagShopping,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Orders', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),
                      ],

                    ),),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.circleInfo,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Subscriptions', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),
                      ],

                    ),),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  Icons.notifications_active_outlined,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Notifications', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),
                      ],

                    ),),
                    Padding(padding: EdgeInsets.only(top: 28.0), child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 17.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEFE7E6),
                                borderRadius: BorderRadius.circular(14.0)
                            ),
                            child: Center(
                                child: FaIcon(
                                  Icons.settings,
                                  size: 18.57,
                                  color: Color(0xff681312),
                                )
                            ),
                          ),
                        ),
                        Text('Settings', style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'HelveticaNeue-Regular',
                          color: Color(0xff0B132B),


                        ),),
                      ],

                    ),),


                  ],
                ),
              ),
            )
          ],

        ),
      )
    );
  }

}