import 'dart:async';

import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:ayushvi/src/widgets/acredetations_slider_one.dart';
import 'package:ayushvi/src/widgets/healthy_blog_page_view.dart';
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
  PageController _accreditationsPageController = PageController();
  int _currentAccreditationsPage = 0;
  PageController _healthyBlogPageViewController = PageController(viewportFraction: 0.5);
  List<String> _healthyBlogImagesListPath = ['assets/images/Drugs.jpg','assets/images/Massage.jpg','assets/images/Drugs.jpg','assets/images/Massage.jpg'];
  List<String> _healthyBlogDescriptionsList = ['8 Home care tips to control\nYour lower blood sugar le..', 'Reasons why your hormone\nlevels are fluctuate when..','8 Home care tips to control\nYour lower blood sugar le..', 'Reasons why your hormone\nlevels are fluctuate when..'];

  PageController _happyCustomersPageController = PageController(viewportFraction:0.5);

  List<String> _happyCustomersList = ['Sreekanth, Mysuru', 'Prachi Desai, Delhi', 'Sreekanth, Mysuru', 'Prachi Desai, Delhi'];


  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(milliseconds: 4000), (timer) {
      if (_currentIntroSliderPage == 4) {
        introSliderController.jumpToPage(0);
      } else {
        introSliderController.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      }

      setState(() {

      });
    });
  }




  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(56.0), left: appResponsive.responsiveLengthForWidth(20.0), right: appResponsive.responsiveLengthForWidth(20.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: appResponsive.responsiveLengthForHeight(36.0),
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
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            height: appResponsive.responsiveContent(36.0,36.0).first,
                            width: appResponsive.responsiveContent(36.0,36.0).last,
                            child: Image.asset(
                                'assets/images/ArchanaDeviProfileImage.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(12.0), right: appResponsive.responsiveLengthForWidth(75.0)),
                        child: SizedBox(
                          width: appResponsive.responsiveLengthForWidth(114.0),
                          height: appResponsive.responsiveLengthForHeight(25.0),
                          child: FittedBox(
                            child: Text(
                              'Hi, Archana',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'HelveticaNeueMedium',
                                color: Color(0xff0B132B),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: appResponsive.responsiveLengthForWidth( 25.16),
                          height: appResponsive.responsiveLengthForHeight( 25.16),
                          child: FittedBox(
                            child: Icon(Icons.notifications_none,
                                size: 25.16, color: Color(0xff681312)),
                          ),
                        ),
                        SizedBox(
                          width: appResponsive.responsiveLengthForWidth( 25.16),
                          height: appResponsive.responsiveLengthForHeight( 25.16),
                          child: FittedBox(
                            child: Icon(FontAwesomeIcons.heart,
                                size: 25.16, color: Color(0xff681312)),
                          ),
                        ),
                        SizedBox(
                          width: appResponsive.responsiveLengthForWidth( 25.16),
                          height: appResponsive.responsiveLengthForHeight( 25.16),
                          child: FittedBox(
                            child: Icon(Icons.shopping_cart_outlined,
                                size: 25.16, color: Color(0xff681312)),
                          ),
                        ),
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
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(10.0)),
                    child: SizedBox(
                      height: appResponsive.responsiveLengthForHeight(50.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(
                            height: appResponsive.responsiveLengthForHeight(10.12),
                            width: appResponsive.responsiveLengthForWidth(10.12),
                            child: FittedBox(
                              child: IconButton(
                                onPressed:(){},
                                icon: Icon(Icons.search,color:Color(0xff545A6B)),
                              ),
                            ),
                          ),
                          hintText: 'Search Doctors, Therapies, Med..',
                          suffixIcon: SizedBox(
                            width: appResponsive.responsiveLengthForWidth(65.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.47),
                                  child: Container(
                                    width: 1,
                                    height: appResponsive.responsiveLengthForHeight(30.0),
                                    color: Color(0xffE7E7EA),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(17.97)),
                                  child: SizedBox(
                                    height: appResponsive.responsiveLengthForHeight(23.12),
                                    width: appResponsive.responsiveLengthForWidth(23.12),
                                    child: FittedBox(
                                      child: Icon(
                                        Icons.mic,
                                        size: 23.12,
                                        color: Color(0xff545A6B),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Color(0xffE7E7EA)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Color(0xffE7E7EA)),
                          ),
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(20.0)),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: appResponsive.responsiveLengthForHeight(182.0),
                            child: PageView(
                              onPageChanged: (newIndex){
                                setState(() {
                                  _currentIntroSliderPage = newIndex;
                                });
                              },
                              controller: introSliderController,
                              children: [
                                SliderOne(),
                                SliderOne(),
                                SliderOne(),
                                SliderOne(),
                                SliderOne(),

                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(18.0)),
                            child: SmoothPageIndicator(
                              controller: introSliderController,
                              count: 5,
                              effect: ExpandingDotsEffect(
                                expansionFactor: 3.0,
                                dotHeight: appResponsive.responsiveLengthForHeight(8.0),
                                dotWidth: appResponsive.responsiveLengthForHeight(8.0),
                                activeDotColor: Color(0xff681312),
                                dotColor: Color(0xffEFE7E6),
                                spacing: appResponsive.responsiveLengthForWidth(3.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(22.0)),
                    child: SizedBox(
                      height: appResponsive.responsiveLengthForHeight(24.0),
                      width: appResponsive.responsiveLengthForWidth(134.0),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'We Provide Best',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'HelveticaNeueMedium',
                            color: Color(0xff262B3E),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(16.0)),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                     crossAxisSpacing: 29.0,
                     children: [
                      Container(
                       alignment: Alignment(-1.0,0.0),
                      child: Column(
                        children: [
                       ClipRRect(
                           borderRadius: BorderRadius.circular(14.0),
                           child: Container(
                             height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/Specialist.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(8.0)),
                         child: FittedBox(
                           child: Text(
                             'Specialist',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',

                             ),
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
                               height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/Centers.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(8.0)),
                         child: FittedBox(
                           child: Text(
                             'Centers',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',

                             ),
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
                               height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/Doctors.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(8.0)),
                         child: FittedBox(
                           child: Text(
                             'Doctors',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',

                             ),
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
                               height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/Therapies.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(8.0)),
                         child: FittedBox(
                           child: Text(
                             'Therapies',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',

                             ),
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
                               height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/Pharmacy.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top:appResponsive.responsiveLengthForHeight(8.0) ),
                         child: FittedBox(
                           child: Text(
                             'Pharmacy',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',

                             ),
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
                               height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/BeautyCare.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(8.0)),
                         child: FittedBox(
                           child: Text(
                             'Beauty Care',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',

                             ),
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
                               height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/Wellness.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(8.0)),
                         child: FittedBox(
                           child: Text(
                             'Wellness',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',

                             ),
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
                               height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/LabTests.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(8.0)),
                         child: FittedBox(
                           child: Text(
                             'Lab Tests',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',

                             ),
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
                               height: appResponsive.responsiveLengthForWidth(70.0),
                               width: appResponsive.responsiveLengthForWidth(70.0),
                               child: FittedBox(child: Image.asset('assets/images/Tracking.jpg', fit: BoxFit.cover,)))),
                       Padding(
                         padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(8.0)),
                         child: FittedBox(
                           child: Text(
                             'Tracking',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 14.0,
                               fontFamily: 'HelveticaNeue-Regular',
                           
                             ),
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
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(22.0)),
                    child: SizedBox(
                      width: appResponsive.responsiveLengthForWidth(171.0),
                      height: appResponsive.responsiveLengthForHeight(21.0),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Offers & Group Plans',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'HelveticaNeueMedium',
                            color: Color(0xff262B3E),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(18.0),),
                  child: Stack(
                    children: [
                      Container(
                        width: appResponsive.responsiveLengthForWidth(388.0),
                        height: appResponsive.responsiveLengthForHeight(160.0),
                          decoration: BoxDecoration(
                              color:Color(0xffEFE7E6),
                              borderRadius: BorderRadius.circular(24.0)
                          ),
                      ),
                      Positioned(
                          top: appResponsive.responsiveLengthForHeight(20.9),
                          left: appResponsive.responsiveLengthForWidth(21.15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             SizedBox(
                            width:appResponsive.responsiveLengthForWidth(25.16),
                             height:appResponsive.responsiveLengthForHeight(25.16),
                               child: FittedBox(
                                
                                 alignment:Alignment.centerLeft,
                                     child:  Icon(FontAwesomeIcons.mortarPestle, size: 25.16, color: Color(0xff681312),),
                               ),
                             ),
                              Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(11.0)),
                                child: SizedBox(
                                  width: appResponsive.responsiveLengthForWidth(194.0),
                                  height: appResponsive.responsiveLengthForHeight(41.0),
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Get 10% off on Beauty Care\nthis National Ayurveda Day', style: TextStyle(
                                        fontSize: 15.5,
                                        fontFamily: 'HelveticaNeue-Regular',
                                        overflow: TextOverflow.fade,
                                        color: Color(0xff171B29)
                                    ),),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(10.0)),
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

                              ),



                            ],
                          )),
                      Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: Container(
                            width: appResponsive.responsiveLengthForWidth(120.0),
                            height: appResponsive.responsiveLengthForHeight(120.0),
                            decoration: BoxDecoration(
                                color: Color(0xffB48989),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24.0), bottomRight: Radius.circular(120.0), topRight: Radius.circular(10.0), topLeft: Radius.circular(1000.0))
                            ),
                          )),
                      Positioned(
                          right: appResponsive.responsiveLengthForWidth(-40.0),
                          bottom: appResponsive.responsiveLengthForHeight(-5.0),
                          child: Image.asset('assets/images/Ayurveda.png',

                            height: appResponsive.responsiveLengthForHeight(122.0),
                            width: appResponsive.responsiveLengthForWidth(182.0),
                          ))
                    ],
                  ),

                  ),




                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(22.0)),
                    child: SizedBox(
                      width: appResponsive.responsiveLengthForHeight(176.0),
                      height: appResponsive.responsiveLengthForWidth(20.0),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Accreditations & More',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'HelveticaNeueMedium',
                            color: Color(0xff262B3E),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(17.5)),
                  child: SizedBox(
                    width: appResponsive.responsiveLengthForWidth(388.0),
                    height: appResponsive.responsiveLengthForHeight(140.0),
                    child: PageView(
                      controller: _accreditationsPageController,
                        onPageChanged: (newIndex){
                        _currentAccreditationsPage = newIndex;
                        setState(() {

                        });
                        },
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(10.0)),
                              child: AcredetationsSliderOne()),
                          Container(
                              margin: EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(10.0)),
                              child: AcredetationsSliderOne()),
                          Container(
                              margin: EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(10.0)),
                              child: AcredetationsSliderOne()),
                          Container(
                              margin: EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(10.0)),
                              child: AcredetationsSliderOne()),
                        ],
                    ),
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(18.5)),
                  child: Center(
                    child: SmoothPageIndicator(controller: _accreditationsPageController, count: 4,
                      effect: ExpandingDotsEffect(
                        expansionFactor: 3.0,
                        dotHeight: appResponsive.responsiveLengthForHeight(8.0),
                        dotWidth: appResponsive.responsiveLengthForHeight(8.0),
                        activeDotColor: Color(0xff681312),
                        dotColor: Color(0xffEFE7E6),
                        spacing: appResponsive.responsiveLengthForWidth(3.0),
                      ),
                    ),
                  ),
                  ),

                  
                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(22.0)),
                    child: SizedBox(
                      width: appResponsive.responsiveLengthForWidth(135.0),
                      height: appResponsive.responsiveLengthForHeight(20.0),
                      child: FittedBox(
                        child: Text(
                          'Knowledge Base',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'HelveticaNeueMedium',
                            color: Color(0xff262B3E),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(18.0)),
                    child: Stack(
                      children: [
                        Container(
                          width: appResponsive.responsiveLengthForWidth(388.0),
                          height: appResponsive.responsiveLengthForHeight(140.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(14.0),
                              child: Image.asset('assets/images/KnowledgeBaseBackground.png', fit: BoxFit.cover,)),
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
                              Padding(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(20.0),
                                  width: appResponsive.responsiveLengthForWidth(200.0),
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    child: Text('A Glimpse of Ayurveda – The forgotten history &', style: TextStyle(
                                        color:  Color(0xff925039),
                                        fontSize: 12.5,
                                        fontFamily: 'HelveticaNeue-Regular',
                                        overflow: TextOverflow.fade,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: appResponsive.responsiveLengthForHeight(20.0),
                                width: appResponsive.responsiveLengthForWidth(200.0),
                                child: FittedBox(
                                  alignment: Alignment.centerLeft,
                                  child: Text('principles of Indian traditional medicine', style: TextStyle(
                                      color:  Color(0xff925039),
                                      fontSize: 12.5,
                                      fontFamily: 'HelveticaNeue-Regular',
                                      overflow: TextOverflow.fade,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.all(appResponsive.responsiveLengthForHeight(8.0)),
                                child: SizedBox(
                                  height: appResponsive.responsiveLengthForHeight(20.0),
                                  width: appResponsive.responsiveLengthForWidth(100.0),

                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
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
                    ),
                  ),



                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(22.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:appResponsive.responsiveLengthForWidth(102),
                          height: appResponsive.responsiveLengthForHeight(20.0),
                          child: FittedBox(
                            child: Text(
                              'Healthy Blog',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'HelveticaNeueMedium',
                                color: Color(0xff262B3E),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:appResponsive.responsiveLengthForWidth(69.0),
                          height: appResponsive.responsiveLengthForHeight(16.0),
                          child: FittedBox(
                            child: Text(
                              'Read More',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'HelveticaNeueMedium',
                                color: Color(0xff681312),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(18.0)),
                    child: SizedBox(
                      width: appResponsive.responsiveLengthForWidth(388.0),
                      height: appResponsive.responsiveLengthForHeight(150.0),
                      child: PageView.builder(
                        controller: _healthyBlogPageViewController,
                        itemCount:4,
                        itemBuilder: (context, index){
                          return Padding(padding: EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(18.0)),
                          child: Card(
                            elevation: 4.0,
                            surfaceTintColor: Color(0xffffffff),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius:BorderRadius.vertical(top:Radius.circular(14.0)),
                                    child: Image.asset(_healthyBlogImagesListPath[index], height: appResponsive.responsiveLengthForHeight(82.0), width: appResponsive.responsiveLengthForWidth(180.0), fit: BoxFit.cover,)),
                                Padding(
                                  padding:  EdgeInsets.symmetric(vertical: appResponsive.responsiveLengthForHeight(12.0), horizontal: appResponsive.responsiveLengthForWidth(20.0)),
                                  child: SizedBox(
                                    width: appResponsive.responsiveLengthForWidth(143.0),
                                    height:appResponsive.responsiveLengthForHeight(32.0),
                                    child: FittedBox(
                                      child: Text(_healthyBlogDescriptionsList[index],
                                        maxLines:2,
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'HelveticaNeue-Regular',
                                            color: Color(0xff171B29),
                                            overflow: TextOverflow.fade,
                                          fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                          );
                        },
                      )
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(18.5)),

                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _healthyBlogPageViewController, count: 4,
                        effect: ExpandingDotsEffect(
                          expansionFactor: 3.0,
                          dotHeight: appResponsive.responsiveLengthForHeight(8.0),
                          dotWidth: appResponsive.responsiveLengthForHeight(8.0),
                          activeDotColor: Color(0xff681312),
                          dotColor: Color(0xffEFE7E6),
                          spacing: appResponsive.responsiveLengthForWidth(3.0),
                        ),
                      ),
                    ),
                  ),



                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(22.0)),
                    child: SizedBox(
                      width: appResponsive.responsiveLengthForWidth(144.0),
                      height: appResponsive.responsiveLengthForHeight(20.0),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Happy Customers',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'HelveticaNeueMedium',
                            color: Color(0xff262B3E),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(18.0)),
                    child: SizedBox(
                        width: appResponsive.responsiveLengthForWidth(388.0),
                        height: appResponsive.responsiveLengthForHeight(115.0),
                        child: PageView.builder(
                          controller: _happyCustomersPageController,
                          itemCount:4,
                          itemBuilder: (context, index){
                            return Padding(padding: EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(18.0)),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(11.0), vertical: appResponsive.responsiveLengthForHeight(6.0)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.0),
                                  color: Color(0xffEFE7E6)
                                ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: appResponsive.responsiveLengthForWidth(10.0),
                                      height: appResponsive.responsiveLengthForHeight(33.0),
                                      child: FittedBox(
                                        child: Text("“",
                                        style: TextStyle(
                                            fontSize: 32.0,
                                            fontFamily: 'HelveticaNeueMedium',
                                          color: Color(0xff681312)
                                        ),),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(18.0)),
                                          child: SizedBox(
                                            width: appResponsive.responsiveLengthForWidth(128.0),
                                            height: appResponsive.responsiveLengthForHeight(56.0),
                                            child: FittedBox(
                                              child: Text("Through Ayurveda treatment\nmy health transformed and\nvitality, restoring balance and\ninner harmony effortlessly.",
                                                maxLines: 5,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 7.0,
                                                    fontFamily: 'HelveticaNeueMedium',
                                                    color: Color(0xff262B3E),
                                                  overflow: TextOverflow.fade
                                                ),),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(4.0)),
                                          child: SizedBox(
                                            width:appResponsive.responsiveLengthForWidth(100.0),
                                            height:appResponsive.responsiveLengthForHeight(14.0),
                                            child: FittedBox(
                                              child: Text(_happyCustomersList[index],
                                                maxLines: 1,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 7.0,
                                                    fontFamily: 'HelveticaNeueMedium',
                                                    color: Color(0xff262B3E),
                                                    overflow: TextOverflow.fade,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(70.0), bottom: appResponsive.responsiveLengthForHeight(10.0)),
                                      child: SizedBox(
                                        width: appResponsive.responsiveLengthForWidth(10.0),
                                        height: appResponsive.responsiveLengthForHeight(33.0),
                                        child: FittedBox(
                                          child: Text("”",
                                            style: TextStyle(
                                                fontSize: 32.0,
                                                fontFamily: 'HelveticaNeueMedium',
                                                color: Color(0xff681312)
                                            ),),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              )
                            );
                          },
                        )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 18.5, bottom: 20.0),

                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _happyCustomersPageController, count: 4,
                        effect: ExpandingDotsEffect(
                          expansionFactor: 3.0,
                          dotHeight: appResponsive.responsiveLengthForHeight(8.0),
                          dotWidth: appResponsive.responsiveLengthForHeight(8.0),
                          activeDotColor: Color(0xff681312),
                          dotColor: Color(0xffEFE7E6),
                          spacing: appResponsive.responsiveLengthForWidth(3.0),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
