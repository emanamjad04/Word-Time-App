import 'dart:ui';

import 'package:flutter/material.dart';

class SText extends StatelessWidget {
  String text;
  double? size;
  Color? color;
  SText({Key? key,required this.text,this.size=20,this.color=Colors.black45}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        color: color,
        fontSize: size
    ),);
  }
}
