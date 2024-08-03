import 'dart:async';

import 'package:ayushvi/register.dart';
import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:ayushvi/src/contents/contents.dart';
import 'package:ayushvi/src/widgets/information_divider.dart';
import 'package:ayushvi/src/widgets/information_text_field.dart';
import 'package:ayushvi/src/widgets/round_edge_button.dart';
import 'package:ayushvi/verify_phone_or_email.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final TextEditingController phoneNumber = TextEditingController();

  final TextEditingController emailId = TextEditingController();
  late Timer timer;
  bool rememberCheckMark = false;
 List signInOptionsImages = [Image.asset('assets/images/googleLogo.png',), Image.asset('assets/images/twitterLogo.png', ), Image.asset('assets/images/appleLogo.png',)];

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 500 ), (_){
      setState(() {

      });
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Contents.primaryBackgroundColor,
        padding: EdgeInsets.only( top: appResponsive.responsiveLengthForHeight(40.0), left: appResponsive.responsiveLengthForWidth(20.0), right:appResponsive.responsiveLengthForWidth(20.0)  ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_outlined, // Corrected the icon name
                    size: 21,
                    color: Color(0Xff545A6B),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(10.0),),
              child: Container(
                width: appResponsive.responsiveContent(33.0, 257.0).last,
                height:appResponsive.responsiveContent(33.0, 257.0).first,
                alignment: Alignment(-1.0,0.0),
                padding: EdgeInsets.only(left: 0.0),
                child: FittedBox(
                  child: Text(
                    'Verify your Account',
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue-Regular',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w100,
                      color: Color(0xff0B132B),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(12.0),),
              child: Container(
                width: appResponsive.responsiveLengthForWidth(370.0),
                height:appResponsive.responsiveLengthForHeight(60.0),

                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your health is our priority. Access personalized care, track\nyour health journey, and connect with your healthcare team.\nLet's keep you on the path to wellness together.",
                   maxLines: 3,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue-Regular',
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff858995),
                    ),
                  ),
                ),
              ),
            ),
           InformationTextField(topPadding: appResponsive.responsiveLengthForHeight(17.0), title: 'Phone Number', textEditingController: phoneNumber, textInputType: TextInputType.phone, prefixText: '+91', prefixIcon: SizedBox(
             width: appResponsive.responsiveLengthForWidth(120.0),
             child: Row(
               children: [
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(16.71)),
                   child: Container(
                     width:  appResponsive.responsiveLengthForWidth(20.19),
                     height:  appResponsive.responsiveLengthForHeight(20.57),
                     child: FittedBox(
                       alignment: Alignment.centerLeft,
                       child: FaIcon(
                         FontAwesomeIcons.phone,
                         size: 21.0,
                         color: Color(0xff0B132B),
                       ),
                     ),
                   ),
                 ),
                 Container(
                   color: Color(0xffB6B8BF),
                   height: appResponsive.responsiveLengthForHeight(36.0),
                   width: appResponsive.responsiveLengthForWidth(1.0),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(15.0)),
                   child: Container(
                     width: appResponsive.responsiveLengthForWidth(30.0),
                     height: appResponsive.responsiveLengthForHeight(20.0),
                     child: FittedBox(
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(4.0),
                         child: Image.asset(
                           'assets/images/IndianFlag.jpg',
                        width: 30.0,
                           height: 20.0,
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           ),
           InformationDivider(topPadding: appResponsive.responsiveLengthForHeight(20.0),),
            InformationTextField(topPadding: appResponsive.responsiveLengthForHeight(21.0), title: 'Email ID', textEditingController: emailId, textInputType: TextInputType.emailAddress, prefixIcon: SizedBox(
              width: appResponsive.responsiveLengthForWidth(70.0),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(16.71)),
                    child: SizedBox(
                      width:appResponsive.responsiveLengthForWidth(20.57) ,
                      height: appResponsive.responsiveLengthForHeight(18.66),
                      child: FittedBox(
                        child: Icon(
                          Icons.email_outlined,
                          size: 21.0,
                          color: Color(0xff0B132B),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xffB6B8BF),
                    height: appResponsive.responsiveLengthForHeight(36.0),
                    width: 1.0,
                  ),

                ],
              ),
            ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(24.59)),
              child: SizedBox(
                
                height: appResponsive.responsiveLengthForHeight(15.43),
                child: Row(
                  children: [
                    SizedBox(
                      width: appResponsive.responsiveLengthForWidth(15.43),
                      height: appResponsive.responsiveLengthForHeight(15.43),
                      child: FittedBox(
                        child: SizedBox(
                          width:15.43,
                          height: 15.43,
                          child: Checkbox(value: rememberCheckMark, onChanged: (boolean){
                            setState(() {
                              rememberCheckMark = boolean!;
                            });
                          }, checkColor: Colors.white,
                          activeColor: Color(0xff681312),),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(11.29)),
                      child: SizedBox(
                        width: appResponsive.responsiveLengthForWidth(78.0),
                        height: appResponsive.responsiveLengthForHeight(16.0),
                        child: FittedBox(
                          child: Text('Remember Me', style: TextStyle(
                            fontFamily: 'Inter-Medium',
                            fontSize: 12.0,
                            color: Color(0xff545A6B)
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(24.92),),
             child: RoundEdgeButton(
              width: appResponsive.responsiveLengthForWidth(388.0),
              height: appResponsive.responsiveLengthForHeight(56.0),
              child: SizedBox(
                width: appResponsive.responsiveLengthForWidth(79.0),
                height: appResponsive.responsiveLengthForHeight(22.0),
                child: FittedBox(
                  child: Text(
                    'Get OTP',
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              callback: () {
                if(phoneNumber.text.toString().length > 0 || emailId.text.toString().length > 0){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> VerifyPhoneOrEmail()));
                }
              },

              backgroundColor: phoneNumber.text.toString().length == 0 && emailId.text.toString().length == 0 ? Color(0xffEFE7E6) : Color(0xff681312),
            ),),
            InformationDivider(topPadding: appResponsive.responsiveLengthForHeight(24.0),),
            Padding(
              padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(25.0),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: signInOptionsImages.map((icons){
                  return InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: appResponsive.responsiveContent(60.0,110.0).last,
                      height: appResponsive.responsiveContent(60.0,110.0).first,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(
                            color: Color(0xffE7E7EA),
                            width: 1.0
                        ),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: appResponsive.responsiveLengthForWidth(25.76),
                          height: appResponsive.responsiveLengthForHeight(21.09),
                          child: FittedBox(
                            child: icons,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList() ,
              ),

            ),
            Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(19.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:appResponsive.responsiveLengthForWidth(165.0),
                  height: appResponsive.responsiveLengthForHeight(21.0),
                  child: FittedBox(
                    child: Text('Don’t have an account?', style: TextStyle(
                      color: Color(0xff545A6B),
                      fontSize: 16.0,
                      fontFamily: 'Inter-Medium'
                    ),),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(18.0)),
                  child: InkWell(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
                    },
                    child: SizedBox(
                      width:appResponsive.responsiveLengthForWidth(128.0),
                      height: appResponsive.responsiveLengthForHeight(21.0),
                      child: FittedBox(
                        child: Text('Create an account', style: TextStyle(
                            color: Color(0xff681312),
                            fontSize: 16.0,
                            fontFamily: 'Inter-Medium'
                        ),),
                      ),
                    ),
                  ),
                )
              ],
            ),),
            Padding(
              padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(38.94)),
              child:  Image.asset(
                'assets/images/OnboardingBar.png',
                width: appResponsive.responsiveContent(19.72, 428).last,
                height: appResponsive.responsiveContent(19.72, 428).first,
                fit: BoxFit.fill,
              ),),
          ],
        ),
      ),
    );
  }
}
