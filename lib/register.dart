import 'package:ayushvi/account_successful.dart';
import 'package:ayushvi/home.dart';
import 'package:ayushvi/sign_in.dart';
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
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: 40.0,
          left: 20.0,
          right: 20.0,
          bottom: 31.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  width: 1.0,
                  color: Color(0xffE7E7EA),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  size: 21,
                  color: Color(0Xff545A6B),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Register Your Account',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue-Regular',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w100,
                          color: Color(0xff0B132B),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
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
                    InformationTextField(
                      topPadding: 13.0,
                      title: 'Enter Your Full Name',
                      textEditingController: name,
                      textInputType: TextInputType.text,
                      prefixIcon: SizedBox(
                        width: 70.0,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.71),
                              child: Icon(
                                Icons.account_circle_outlined,
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
                    InformationTextField(
                      topPadding: 13.0,
                      title: 'Enter Your Email',
                      textEditingController: email,
                      textInputType: TextInputType.text,
                      prefixIcon: SizedBox(
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
                    InformationTextField(
                      topPadding: 13.0,
                      title: 'Phone Number',
                      textEditingController: phoneNumber,
                      textInputType: TextInputType.phone,
                      prefixText: '+91',
                      prefixIcon: SizedBox(
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
                    Padding(padding: EdgeInsets.only(top: 13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Date of Birth',
                            style: TextStyle(
                              fontFamily: 'Inter-Medium',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w100,
                              color: Color(0xff0B132B),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              dateOfBirthSelector(context);
                            },
                            child: Container(
                              width: 388.0,
                              height: 60.0,
                              margin: EdgeInsets.only(top: 9.41),
                              padding: EdgeInsets.symmetric(horizontal: 16.71),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.0),
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
                                    width: 250.0,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 16.71),
                                          child: FaIcon(
                                            Icons.calendar_month,
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
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                          child: Text(DateFormat('d MMMM yyyy').format(dateOfBirth).toString(), style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Inter-Medium',
                                            color: Color(0xff0B132B)
                                          ),),
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down_outlined, size: 35.0, color: Color(0xff545A6B),)
                                ],
                              )
                            ),
                          ),


                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                              fontFamily: 'Inter-Medium',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w100,
                              color: Color(0xff0B132B),
                            ),
                          ),
                          Container(
                            width: 388.0,
                            height: 60.0,
                            margin: EdgeInsets.only(top: 9.41),
                            padding: EdgeInsets.only(left: 16.71),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffB6B8BF),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.71),
                                  child: Icon(
                                    Icons.transgender,
                                    size: 21.0,
                                    color: Color(0xff0B132B),
                                  ),
                                ),
                                Container(
                                  color: Color(0xffB6B8BF),
                                  height: 36.0,
                                  width: 1.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: DropdownButton<String>(
                                      borderRadius: BorderRadius.circular(14.0),
                                      value: gender,
                                      dropdownColor: Colors.white,
                                      isExpanded: true,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Inter-Medium',
                                        color: Color(0xff0B132B),
                                      ),
                                      underline: SizedBox(),
                                      icon: Icon(Icons.arrow_drop_down_outlined, color: Color(0xff545A6B),),
                                      iconSize:35.0,
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
                    Padding(padding: EdgeInsets.only(top: 13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontFamily: 'Inter-Medium',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w100,
                              color: Color(0xff0B132B),
                            ),
                          ),
                          Container(
                            width: 388.0,
                            height: 60.0,
                            margin: EdgeInsets.only(top: 9.41),
                            padding: EdgeInsets.only(left: 16.71),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffB6B8BF),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.71),
                                  child: Icon(
                                    Icons.account_circle_outlined,
                                    size: 21.0,
                                    color: Color(0xff0B132B),
                                  ),
                                ),
                                Container(
                                  color: Color(0xffB6B8BF),
                                  height: 36.0,
                                  width: 1.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: DropdownButton<String>(
                                      borderRadius: BorderRadius.circular(14.0),
                                      value: age,
                                      dropdownColor: Colors.white,
                                      isExpanded: true,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Inter-Medium',
                                        color: Color(0xff0B132B),
                                      ),
                                      underline: SizedBox(),
                                      icon: Icon(Icons.arrow_drop_down_outlined, color: Color(0xff545A6B),),
                                      iconSize:35.0,
                                      onChanged: (value) {
                                        setState(() {
                                          age = value.toString();
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
                          InformationTextField(
                            topPadding: 13.0,
                            title: 'Occupation',
                            textEditingController: occupation,
                            textInputType: TextInputType.text,
                            prefixIcon: SizedBox(
                              width: 70.0,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.71),
                                    child: Icon(
                                      Icons.work_outline,
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
                          Row(
                            children: [
                              Checkbox(value: privacyPolicyCheckBox, onChanged: (boolean){
                                setState(() {
                                  privacyPolicyCheckBox = boolean!;
                                });
                              }, checkColor: Colors.white,
                                activeColor: Color(0xff681312),),
                              Text('By registering you’re agreeing to terms & conditions of Ayushvi.', style: TextStyle(
                                  fontFamily: 'Inter-Medium',
                                  fontSize: 9.0,
                                  color: Color(0xff545A6B)
                              ),)
                            ],
                          ),

                          Padding(padding: EdgeInsets.only(top: 24.33,), child: RoundEdgeButton(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                            callback: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AccountSuccessful()));

                            },
                            width: 388.0,
                            backgroundColor:Color(0xff681312),
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0, right: 0.0,),
                            child: InformationDivider(topPadding: 24.0,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,),
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
                              padding: const EdgeInsets.only(left: 0.0, right: 0.0,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Already have an account?', style: TextStyle(
                                      color: Color(0xff545A6B),
                                      fontSize: 16.0,
                                      fontFamily: 'Inter-Medium'
                                  ),),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                                    },
                                    child: Text('SignIn Here', style: TextStyle(
                                        color: Color(0xff681312),
                                        fontSize: 16.0,
                                        fontFamily: 'Inter-Medium'
                                    ),),
                                  )
                                ],
                              ),
                            ),),
                        ],
                      ),
                    )
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
