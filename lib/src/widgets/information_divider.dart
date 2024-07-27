import 'package:flutter/cupertino.dart';

class InformationDivider extends StatelessWidget{
  final double topPadding;
  InformationDivider({required this.topPadding});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Padding(
        padding: EdgeInsets.only(top: topPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Color(0xff545A6B),
                height: 1.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.5),
              child: Text(
                'Or',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Inter-Medium',
                  color: Color(0xff545A6B),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xff545A6B),
                height: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}