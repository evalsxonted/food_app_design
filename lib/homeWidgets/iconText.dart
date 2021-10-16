import 'package:flutter/material.dart';

import 'bodyText.dart';
class IconText extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;

  const IconText({Key key, this.text, this.icon, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 18,),
        SizedBox(width: 6,),
        BodyText(bodyText: text,),
      ],
    );
  }
}
