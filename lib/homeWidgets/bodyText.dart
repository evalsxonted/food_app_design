import 'package:flutter/material.dart';

import '../constants.dart';

class BodyText extends StatelessWidget {
  final String bodyText;

  const BodyText({Key key, this.bodyText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(bodyText, style: TextStyle(fontSize: textSize1, color: textColor),);
  }
}
