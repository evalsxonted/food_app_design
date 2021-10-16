import 'package:flutter/material.dart';
import 'package:pizza/homeWidgets/bodyText.dart';
import 'package:pizza/homeWidgets/titleText.dart';

import '../constants.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: bigPadding, right: bigPadding, bottom: bigPadding *4.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(
            text: "About",
            fontSize: titleSize2,
          ),
          SizedBox(height: normalPadding,),
          BodyText(bodyText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",),
        ],
      ),
    );
  }
}
