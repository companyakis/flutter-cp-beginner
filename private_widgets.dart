//we can create our widgets

import 'package:flutter/material.dart';

class OurText extends StatelessWidget {
  String content;
  double fontSize;

  OurText(this.content, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(fontSize: fontSize, color: Colors.black),
    );
  }
}
