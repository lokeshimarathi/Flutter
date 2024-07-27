import 'package:ayushvi/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyPhoneOrEmail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VerifyPhoneOrEmail();
  }
}

class _VerifyPhoneOrEmail extends State<StatefulWidget>{
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
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

              Padding(
                padding: const EdgeInsets.only(top: 10.0,),
                child: Text(
                  'Verify OTP',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue-Regular',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w100,
                    color: Color(0xff0B132B),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0,),
                child: Text(
                  "We have sent an Email and Phone OTP to verify you. Protecting your data with confidence through secure OTP verification. Never share your OTP with anyone.",
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue-Regular',
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff858995),
                  ),
                ),
              ),

             Padding(
               padding: const EdgeInsets.only(top: 21.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   SizedBox(
                     width: 60,
                     height: 60,

                     child: TextField(
                       controller: otp1,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       textAlignVertical: TextAlignVertical.center,
                       onChanged: (value){
                         if(value.length == 1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       style: TextStyle(
                         fontFamily: 'HelveticaNeue-Regular',
                         fontWeight: FontWeight.bold
                       ),
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly
                       ],
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                             width: 1.0,
                             color: Color(0xff858995)
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff681312)
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 60,
                     height: 60,

                     child: TextField(
                       controller: otp2,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       style: TextStyle(

                           fontFamily: 'HelveticaNeue-Regular',
                           fontWeight: FontWeight.bold

                       ),
                       onChanged: (value){
                         if(value.length == 1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly
                       ],
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff858995)
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff681312)
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 60,
                     height: 60,

                     child: TextField(
                       controller: otp3,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       style: TextStyle(

                           fontFamily: 'HelveticaNeue-Regular',
                           fontWeight: FontWeight.bold

                       ),
                       onChanged: (value){
                         if(value.length == 1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly
                       ],
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff858995)
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff681312)
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 60,
                     height: 60,

                     child: TextField(
                       controller: otp4,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       style: TextStyle(

                           fontFamily: 'HelveticaNeue-Regular',
                           fontWeight: FontWeight.bold

                       ),
                       onChanged: (value){
                         if(value.length == 1){
                           FocusScope.of(context).nextFocus();
                         }
                       },
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly
                       ],
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff858995)
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff681312)
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 60,
                     height: 60,

                     child: TextField(
                       controller: otp5,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       style: TextStyle(

                           fontFamily: 'HelveticaNeue-Regular',
                           fontWeight: FontWeight.bold

                       ),
                       onChanged: (value){
                         if(value.length == 1){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                         }
                       },
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly
                       ],
                       decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff858995)
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(14.0),
                           borderSide: BorderSide(
                               width: 1.0,
                               color: Color(0xff681312)
                           ),
                         ),
                       ),
                     ),
                   ),

                 ],
               ),
             ),
              Padding(padding: EdgeInsets.only(top: 21.0),child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    'Recieve your OTP?',
                    style: TextStyle(
                      fontFamily: 'Inter-Medium',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff0B132B),
                    ),
                  ),
                  ),
                  InkWell(
                    onTap: (){
                      otp1.clear();
                      otp2.clear();
                      otp3.clear();
                      otp4.clear();
                      otp5.clear();
                      setState(() {

                      });
                    },
                    child: Text(
                      'Resend',
                      style: TextStyle(
                        fontFamily: 'Inter-Medium',
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff681312),
                      ),
                    ),
                  ),
                ],
              ),)


            ],
          ),
        ),
      ),
    );
  }
}