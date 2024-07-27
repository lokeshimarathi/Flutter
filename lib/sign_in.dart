import 'package:ayushvi/register.dart';
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

  bool rememberCheckMark = false;
 List signInOptionsImages = [Image.asset('assets/images/googleLogo.png', width: 25.76, height: 25.76,), Image.asset('assets/images/twitterLogo.png', width: 25.76, height: 25.76,), Image.asset('assets/images/appleLogo.png', width: 25.76, height: 25.76,)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height, // Ensuring height is set properly
          color: Colors.white,
          padding: const EdgeInsets.only( top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                        width: 1.0,
                        color: Color(0xffE7E7EA),
                      )),

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
                padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0,),
                child: Text(
                  'Verify your Account',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue-Regular',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w100,
                    color: Color(0xff0B132B),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0,),
                child: Text(
                  "Your health is our priority. Access personalized care, track your health journey, and connect with your healthcare team. Let's keep you on the path to wellness together.",
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue-Regular',
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff858995),
                  ),
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
               child: InformationTextField(topPadding: 17.0, title: 'Phone Number', textEditingController: phoneNumber, textInputType: TextInputType.phone, prefixText: '+91', prefixIcon: SizedBox(
                 width: 120.0,
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16.71),
                       child: FaIcon(
                         FontAwesomeIcons.phone,
                         size: 21.0,
                         color: Color(0xff0B132B),
                       ),
                     ),
                     Container(
                       color: Color(0xffB6B8BF),
                       height: 36.0,
                       width: 1.0,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 15.0),
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
                   ],
                 ),
               ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
               child: InformationDivider(topPadding: 20.0,),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
                child: InformationTextField(topPadding: 14.0, title: 'Email ID', textEditingController: emailId, textInputType: TextInputType.emailAddress, prefixIcon: SizedBox(
                  width: 70.0,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.71),
                        child: Icon(
                          Icons.email_outlined,
                          size: 21.0,
                          color: Color(0xff0B132B),
                        ),
                      ),
                      Container(
                        color: Color(0xffB6B8BF),
                        height: 36.0,
                        width: 1.0,
                      ),

                    ],
                  ),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0,),
                child: Row(
                  children: [
                    Checkbox(value: rememberCheckMark, onChanged: (boolean){
                      setState(() {
                        rememberCheckMark = boolean!;
                      });
                    }, checkColor: Colors.white,
                    activeColor: Color(0xff681312),),
                    Text('Remember Me', style: TextStyle(
                      fontFamily: 'Inter-Medium',
                      fontSize: 12.0,
                      color: Color(0xff545A6B)
                    ),)
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 24.92, left: 20.0, right: 20.0,), child: RoundEdgeButton(
                child: Text(
                  'Get OTP',
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.white),
                ),
                callback: () {
                  if(phoneNumber.text.toString().length > 0 || emailId.text.toString().length > 0){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> VerifyPhoneOrEmail()));
                  }
                },
                width: 388.0,
                backgroundColor: phoneNumber.text.toString().length == 0 && emailId.text.toString().length == 0 ? Color(0xffEFE7E6) : Color(0xff681312),
              ),),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
                child: InformationDivider(topPadding: 24.0,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: signInOptionsImages.map((icons){
                    return InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: 110.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(
                              color: Color(0xffE7E7EA),
                              width: 1.0
                          ),
                        ),
                        child: Center(
                          child: icons,
                        ),
                      ),
                    );
                  }).toList() ,
                ),

              ),
              Padding(padding: EdgeInsets.only(top: 19.0),

              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Don’t have an account?', style: TextStyle(
                      color: Color(0xff545A6B),
                      fontSize: 16.0,
                      fontFamily: 'Inter-Medium'
                    ),),
                    InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
                      },
                      child: Text('Create an account', style: TextStyle(
                          color: Color(0xff681312),
                          fontSize: 16.0,
                          fontFamily: 'Inter-Medium'
                      ),),
                    )
                  ],
                ),
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  'assets/images/OnboardingBar.png',
                  width: double.infinity,
                  height: 19.72,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
