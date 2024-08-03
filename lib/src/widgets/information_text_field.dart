import 'package:ayushvi/responsive/app_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationTextField extends StatefulWidget {
  final double topPadding;
  final String title;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String? prefixText;
  final Widget prefixIcon;
  String value = '';
  InformationTextField({
    required this.topPadding,
    required this.title,
    required this.textEditingController,
    required this.textInputType,
     this.prefixText,
    required this.prefixIcon,

  });

  @override
  State<InformationTextField> createState() => _InformationTextFieldState();
}

class _InformationTextFieldState extends State<InformationTextField> {
  set value(String value) {}

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(context);
    return Padding(
      padding:  EdgeInsets.only(top: widget.topPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: appResponsive.responsiveContent(19.0, 94.0).last,
           height:  appResponsive.responsiveContent(19.0, 94.0).first,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'Inter-Medium',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w100,
                  color: Color(0xff0B132B),
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: appResponsive.responsiveLengthForHeight(9.0)),
            child: TextField(
              onChanged: (value){
            this.value = value;
              },
              controller: widget.textEditingController,
              keyboardType: widget.textInputType,
              style: TextStyle(
                color: Color(0xff0B132B),
                fontFamily: 'HelveticaNeueMedium',
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                prefixText: widget.prefixText,
                prefixIcon: widget.prefixIcon,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xffB6B8BF)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xff681312)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
