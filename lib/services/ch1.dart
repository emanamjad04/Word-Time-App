import 'dart:ui';

import 'package:flutter/material.dart';

class LText extends StatelessWidget {
  String text;
  double? size;
  Color? color;
  LText({Key? key,required this.text,this.size=30,this.color=Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: size
    ),);
  }
}
