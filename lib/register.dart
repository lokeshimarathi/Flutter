import 'package:ayushvi/account_successful.dart';
import 'package:ayushvi/home.dart';
import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:ayushvi/sign_in.dart';
import 'package:ayushvi/src/contents/contents.dart';
import 'package:ayushvi/src/widgets/information_divider.dart';
import 'package:ayushvi/src/widgets/information_text_field.dart';
import 'package:ayushvi/src/widgets/round_edge_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterState();
  }
}

class _RegisterState extends State<Register> {
  bool policyCheckMark = false;
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController occupation = TextEditingController();
  bool privacyPolicyCheckBox = false;
  List<String> genderList = ['Male', 'Female', 'Other'];
  List signInOptionsImages = [Image.asset('assets/images/googleLogo.png', width: 25.76, height: 25.76,), Image.asset('assets/images/twitterLogo.png', width: 25.76, height: 25.76,), Image.asset('assets/images/appleLogo.png', width: 25.76, height: 25.76,)];
  List<String> ageList = ['0-9 Years', '9-17 Years', '18-24 Years', '25-32 Years', '33-45 Years', '45-60 Years'];
  String gender = 'Male';
  String age = '0-9 Years';
  DateTime dateOfBirth = DateTime.now();
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(10.0),),
                      child: Container(
                        width: appResponsive.responsiveContent(33.0, 257.0).last,
                        height:appResponsive.responsiveContent(33.0, 257.0).first,
                        alignment: Alignment(-1.0,0.0),
                        padding: EdgeInsets.only(left: 0.0),
                        child: FittedBox(
                          child: Text(
                            'Register your Account',
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
                    InformationTextField(
                      topPadding: appResponsive.responsiveLengthForHeight(13.0),
                      title: 'Enter Your Full Name',
                      textEditingController: name,
                      textInputType: TextInputType.text,
                      prefixIcon: SizedBox(
                        width: appResponsive.responsiveLengthForWidth(70.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(16.71)),
                              child: SizedBox(
                                width: appResponsive.responsiveLengthForWidth(21.0),
                                height: appResponsive.responsiveLengthForHeight(21.0),
                                child: FittedBox(
                                  child: Icon(
                                    Icons.account_circle_outlined,
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
                    InformationTextField(
                      topPadding: appResponsive.responsiveLengthForHeight(13.0),
                      title: 'Enter Your Email',
                      textEditingController: name,
                      textInputType: TextInputType.text,
                      prefixIcon: SizedBox(
                        width: appResponsive.responsiveLengthForWidth(70.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(16.71)),
                              child: SizedBox(
                                width: appResponsive.responsiveLengthForWidth(21.0),
                                height: appResponsive.responsiveLengthForHeight(21.0),
                                child: FittedBox(
                                  child: Icon(
                                    Icons.email_outlined,
                                    size: 21,
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
                    Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(13.59)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:appResponsive.responsiveLengthForWidth(78.0),
                            height: appResponsive.responsiveLengthForHeight(19.0),
                            child: FittedBox(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Date of Birth',
                                style: TextStyle(
                                  fontFamily: 'Inter-Medium',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w100,
                                  color: Color(0xff0B132B),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              dateOfBirthSelector(context);
                            },
                            child: Container(
                              width: appResponsive.responsiveLengthForWidth(388.0),
                              height: appResponsive.responsiveLengthForHeight(60.0),
                              margin: EdgeInsets.only(top:appResponsive.responsiveLengthForHeight( 9.41)),
                              padding: EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(16.71)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xffB6B8BF)
                                )
                              ),

                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: appResponsive.responsiveLengthForWidth(250.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(16.71)),
                                          child: SizedBox(
                                            width: appResponsive.responsiveLengthForWidth(18.66),
                                            height: appResponsive.responsiveLengthForHeight(20.57),
                                            child: FittedBox(
                                              child: FaIcon(
                                                Icons.calendar_month,
                                                size: 30.0,
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
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(10.0)),
                                          child: SizedBox(
                                            width: appResponsive.responsiveLengthForWidth(135.0),
                                            height: appResponsive.responsiveLengthForHeight(21.0),
                                            child: FittedBox(
                                              child: Text(DateFormat('d MMMM yyyy').format(dateOfBirth).toString(), style: TextStyle(
                                                fontSize: 16.0,
                                                fontFamily: 'Inter-Medium',
                                                color: Color(0xff0B132B)
                                              ),),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      width: appResponsive.responsiveLengthForWidth(35.0),
                                      height: appResponsive.responsiveLengthForHeight(35.0),
                                     child:  FittedBox(child: Icon(Icons.arrow_drop_down_outlined, size: 35.0, color: Color(0xff545A6B),))
                                  )
                                ],
                              )
                            ),
                          ),


                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(13.59)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:appResponsive.responsiveLengthForWidth(45.0),
                            height:appResponsive.responsiveLengthForHeight(19.0),
                            child: FittedBox(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Gender',
                                style: TextStyle(
                                  fontFamily: 'Inter-Medium',
                                  fontWeight: FontWeight.w100,
                                  color: Color(0xff0B132B),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: appResponsive.responsiveLengthForWidth(388.0),
                            height: appResponsive.responsiveLengthForHeight(60.0),
                            margin: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(9.41)),
                            padding: EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(16.71)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffB6B8BF),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(16.71)),
                                  child: SizedBox(
                                    width: appResponsive.responsiveLengthForWidth(21.0),
                                    height: appResponsive.responsiveLengthForHeight(21.0),
                                    child: FittedBox(
                                      child: Icon(
                                        Icons.transgender,
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
                                Expanded(
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(10.0)),
                                    child: DropdownButton<String>(
                                      borderRadius: BorderRadius.circular(8.0),
                                      value: gender,
                                      dropdownColor: Colors.white,
                                      isExpanded: true,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Inter-Medium',
                                        color: Color(0xff0B132B),
                                      ),
                                      underline: SizedBox(),
                                      icon: SizedBox(
                                        width: appResponsive.responsiveLengthForWidth(30.0),
                                          height: appResponsive.responsiveLengthForHeight(30.0),
                                          child: FittedBox(child: Icon(Icons.arrow_drop_down_outlined, color: Color(0xff545A6B),))),
                                      iconSize:30.0,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      },
                                      items: genderList.map((value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(13.59)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:appResponsive.responsiveLengthForWidth(45.0),
                            height:appResponsive.responsiveLengthForHeight(19.0),
                            child: FittedBox(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Age',
                                style: TextStyle(
                                  fontFamily: 'Inter-Medium',
                                  fontWeight: FontWeight.w100,
                                  color: Color(0xff0B132B),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: appResponsive.responsiveLengthForWidth(388.0),
                            height: appResponsive.responsiveLengthForHeight(60.0),
                            margin: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(9.41)),
                            padding: EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(16.71)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffB6B8BF),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(right: appResponsive.responsiveLengthForWidth(16.71)),
                                  child: SizedBox(
                                    width: appResponsive.responsiveLengthForWidth(21.0),
                                    height: appResponsive.responsiveLengthForHeight(21.0),
                                    child: FittedBox(
                                      child: Icon(
                                        Icons.account_circle_outlined,
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
                                Expanded(
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(10.0)),
                                    child: DropdownButton<String>(
                                      borderRadius: BorderRadius.circular(8.0),
                                      value: age,
                                      dropdownColor: Colors.white,
                                      isExpanded: true,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Inter-Medium',
                                        color: Color(0xff0B132B),
                                      ),
                                      underline: SizedBox(),
                                      icon: SizedBox(
                                          width: appResponsive.responsiveLengthForWidth(30.0),
                                          height: appResponsive.responsiveLengthForHeight(30.0),
                                          child: FittedBox(child: Icon(Icons.arrow_drop_down_outlined, color: Color(0xff545A6B),))),
                                      iconSize:30.0,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      },
                                      items: ageList.map((value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                    InformationTextField(
                      topPadding: appResponsive.responsiveLengthForHeight(13.0),
                      title: 'Occupation',
                      textEditingController: occupation,
                      textInputType: TextInputType.text,
                      prefixIcon: SizedBox(
                        width: 70.0,
                        child: Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: appResponsive.responsiveLengthForWidth(16.71)),
                              child: SizedBox(
                                width: appResponsive.responsiveLengthForWidth(21.0),
                                height: appResponsive.responsiveLengthForHeight(21.0),
                                child: FittedBox(
                                  child: Icon(
                                    Icons.work_outline,
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
                                  child: Checkbox(value: privacyPolicyCheckBox, onChanged: (boolean){
                                    setState(() {
                                      privacyPolicyCheckBox = boolean!;
                                    });
                                  }, checkColor: Colors.white,
                                    activeColor: Color(0xff681312),),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(10.0)),
                              child: SizedBox(
                                width: appResponsive.responsiveLengthForWidth(300.0),
                                height: appResponsive.responsiveLengthForHeight(16.0),
                                child: FittedBox(
                                  child: Text('By registering you’re agreeing to terms & conditions of Ayushvi.', style: TextStyle(
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
                    Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(24.33),),
                    child: RoundEdgeButton(

                      child: SizedBox(
                        width: appResponsive.responsiveLengthForWidth(74.0),
                        height: appResponsive.responsiveLengthForHeight(22.0),
                        child: FittedBox(
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                      callback: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountSuccessful()));

                      },
                      width: AppResponsive(context).responsiveContent(56.0, 388.0).last,
                      height: AppResponsive(context).responsiveContent(56.0, 388.0).first,
                      backgroundColor:Color(0xff681312),
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
                    Padding(padding: EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(19.0), bottom: appResponsive.responsiveLengthForHeight(31.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width:appResponsive.responsiveLengthForWidth(165.0),
                            height: appResponsive.responsiveLengthForHeight(21.0),
                            child: FittedBox(
                              child: Text('Already have an account?', style: TextStyle(
                                  color: Color(0xff545A6B),
                                  fontSize: 16.0,
                                  fontFamily: 'Inter-Medium'
                              ),),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: appResponsive.responsiveLengthForWidth(18.0), ),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignIn()));
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

                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
  void dateOfBirthSelector( BuildContext context) async{
    dateOfBirth = (await showDatePicker(context: context, firstDate: DateTime(1950), lastDate: DateTime.now()))!;
    setState(() {

    });
  }

}
