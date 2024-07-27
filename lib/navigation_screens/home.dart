import 'dart:async';

import 'package:ayushvi/src/widgets/nav_bar.dart';
import 'package:ayushvi/src/widgets/slider_five.dart';
import 'package:ayushvi/src/widgets/slider_four.dart';
import 'package:ayushvi/src/widgets/slider_one.dart';
import 'package:ayushvi/src/widgets/slider_three.dart';
import 'package:ayushvi/src/widgets/slider_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int _currentIntroSliderPage = 0;
  PageController introSliderController = PageController();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 4000), (timer) {
      if (_currentIntroSliderPage == 4) {
        _currentIntroSliderPage = 0;
        introSliderController.jumpToPage(0);
      } else {
        _currentIntroSliderPage++;
        introSliderController.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 56.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 36.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                              'assets/images/ArchanaDeviProfileImage.jpg',
                              height: 36.0,
                              width: 36.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 75.0),
                        child: Text(
                          'Hi, Archana',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'HelveticaNeueMedium',
                            color: Color(0xff0B132B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.notifications_none,
                            size: 25.16, color: Color(0xff681312)),
                        Icon(FontAwesomeIcons.heart,
                            size: 25.16, color: Color(0xff681312)),
                        Icon(Icons.shopping_cart_outlined,
                            size: 25.16, color: Color(0xff681312)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: SizedBox(
                      height: 50.0,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 23.12,
                            color: Color(0xff545A6B),
                          ),
                          hintText: 'Search Doctors, Therapies, Med..',
                          suffixIcon: SizedBox(
                            width: 65.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.47),
                                  child: Container(
                                    width: 1,
                                    height: 36.0,
                                    color: Color(0xffE7E7EA),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 17.97),
                                  child: Icon(
                                    Icons.mic,
                                    size: 23.12,
                                    color: Color(0xff545A6B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide(color: Color(0xffE7E7EA)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide(color: Color(0xffE7E7EA)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 182.0,
                            child: PageView(
                              controller: introSliderController,
                              children: [
                                SliderOne(),
                                SliderTwo(),
                                SliderThree(),
                                SliderFour(),
                                SliderFive(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: SmoothPageIndicator(
                              controller: introSliderController,
                              count: 5,
                              effect: ExpandingDotsEffect(
                                expansionFactor: 3.0,
                                dotHeight: 8.0,
                                dotWidth: 8.0,
                                activeDotColor: Color(0xff681312),
                                dotColor: Color(0xffEFE7E6),
                                spacing: 3.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 22.0),
                    child: Text(
                      'We Provide Best',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'HelveticaNeueMedium',
                        color: Color(0xff262B3E),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: GridView.count(
                     shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
               crossAxisSpacing: 10.0,
               children: [
                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                             height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/Specialist.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Specialist',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                               height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/Centers.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Centers',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                               height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/Doctors.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Doctors',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),


                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                               height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/Therapies.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Therapies',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                               height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/Pharmacy.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Pharmacy',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),

                     ],
                   ),
                 ),
                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                               height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/BeautyCare.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Beauty Care',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                               height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/Wellness.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Wellness',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                               height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/LabTests.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Lab Tests',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   alignment: Alignment(-1.0,0.0),
                   child: Column(
                     children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                               height: 80.0,
                               width: 100.0,
                               child: Image.asset('assets/images/Tracking.jpg', fit: BoxFit.cover,))),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                           'Tracking',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 14.0,
                             fontFamily: 'HelveticaNeue-Regular',

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 22.0),
                    child: Text(
                      'Offers & Group Plans',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'HelveticaNeueMedium',
                        color: Color(0xff262B3E),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 18.0,),
                  child: Stack(
                    children: [
                      Container(
                        width: 388.0,
                        height: 160.0,
                          decoration: BoxDecoration(
                              color:Color(0xffEFE7E6),
                              borderRadius: BorderRadius.circular(24.0)
                          ),
                      ),
                      Positioned(
                          top: 20.9,
                          left: 21.15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(FontAwesomeIcons.mortarPestle, size: 25.16, color: Color(0xff681312),),
                              Padding(padding: EdgeInsets.only(top: 11.0),
                                child: SizedBox(
                                  width: 250.0,
                                  child: Text('Get 10% off on Beauty Care this National Ayurveda Day', style: TextStyle(
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
                                  height: 30.0,
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

                              ),



                            ],
                          )),
                      Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: Container(
                            width: 120.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                                color: Color(0xffB48989),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24.0), bottomRight: Radius.circular(120.0), topRight: Radius.circular(10.0), topLeft: Radius.circular(1000.0))
                            ),
                          )),
                      Positioned(
                          right: -80.0,
                          bottom: -20.0,
                          child: Image.asset('assets/images/Ayurveda.png', height: 200.0, width: 250.0,))
                    ],
                  ),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
