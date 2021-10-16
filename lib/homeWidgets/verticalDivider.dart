import 'package:flutter/material.dart';

import '../constants.dart';
class MyVerticalDivider extends StatelessWidget {
  final double height;
  const MyVerticalDivider({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: textColor,
      width: 2,
    );
  }
}
