import 'package:flutter/material.dart';

class RoundEdgeButton extends StatelessWidget{
Widget child;
Color? backgroundColor;
double? borderRadius;
void Function() callback;
double? width;
double? height;
RoundEdgeButton({required this.child, this.backgroundColor = const Color(0xff681312), this.borderRadius = 8.0, required this.callback, required this.width, required this.height});


  @override
  ElevatedButton build(BuildContext context){
    return ElevatedButton(
        onPressed: callback,
        child: child,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width!, height!),
        backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!)
          )
    ),
    );
  }
}