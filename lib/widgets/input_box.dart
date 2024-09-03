import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

inputBox(BuildContext context,{ required String title, String? prefixText, String? hintText, required TextEditingController textEditingController}){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: Theme.of(context).textTheme.bodySmall,)
      TextField(
      
      ),
    ],
  );
}