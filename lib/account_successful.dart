import 'package:ayushvi/home.dart';
import 'package:ayushvi/src/widgets/round_edge_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountSuccessful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AccountSuccessfulState();
  }

}

class _AccountSuccessfulState extends State<AccountSuccessful>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only( top: 40.0),
        color: Colors.white,
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
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/AccountSuccessfullIcon.png', width: 239.2, height: 230,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0,),
                        child: Text(
                          'Account Successful',
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
                          "Account Completed Successful. We are good that you use oue services. Find the best doctor in your neighbourhood now with complete.",
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue-Regular',
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff858995),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Padding(padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0), child: RoundEdgeButton(
              child: Text(
                'Explore',
                style: TextStyle(
                    fontSize: 18.0, color: Colors.white),
              ),
              callback: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));

              },
              width: 388.0,
              backgroundColor:Color(0xff681312),
            ),),

          ],
        ),
      )
    );
  }

}