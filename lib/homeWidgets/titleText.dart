import 'package:flutter/material.dart';
class TitleText extends StatelessWidget {
  final double fontSize ;
  final String text;
  const TitleText({Key key, this.fontSize, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize,color: Colors.white, fontWeight: FontWeight.bold),);
  }
}
