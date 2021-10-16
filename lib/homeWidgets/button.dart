import 'package:flutter/material.dart';
import 'package:pizza/constants.dart';
import 'package:pizza/homeWidgets/titleText.dart';
class MyButton extends StatelessWidget {
  final Color color;
  final String text;
  const MyButton({Key key, this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20,left: 20,top: 15,bottom: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TitleText(text:  text,fontSize: titleSize1,),
    );
  }
}
