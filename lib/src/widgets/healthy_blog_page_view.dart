import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthyBlogPageView extends StatelessWidget{
 final String text;
 final String imagePath;
   HealthyBlogPageView({required this.text, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 180.0,
      height: 140.0,
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 82.0, width: 180.0, fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: SizedBox(
                width: 140,
                child: Text(text,
                  maxLines:2,
                  style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'HelveticaNeue-Regular',
                  color: Color(0xff171B29),
                    overflow: TextOverflow.fade
                ),),
              ),
            )

          ],
        ),
      ),
    );
  }

}