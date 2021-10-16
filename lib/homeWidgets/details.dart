import 'package:flutter/material.dart';
import 'package:pizza/constants.dart';
import 'package:pizza/homeWidgets/price.dart';
import 'package:pizza/homeWidgets/titleText.dart';
import 'package:pizza/homeWidgets/verticalDivider.dart';
import 'bodyText.dart';
import 'iconText.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(right: bigPadding, left: bigPadding, top: bigPadding),
    child: Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText( text: "Chicken Pizza", fontSize: titleSize1,),
            PriceText(price: 12.00,),
          ],
        ),
        SizedBox(height: smallPadding,),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconText(text: "4.6   130 followers",icon: Icons.star, iconColor: Colors.yellow,),
            BodyText(bodyText: "8 slices / 10",),
          ],
        ),
        SizedBox(height: bigPadding,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconText(text: "Caluries",icon: Icons.whatshot, iconColor: Colors.yellow,),
            MyVerticalDivider(
              height: 15,
            ),
            IconText(text: "15 mins",icon: Icons.access_time, iconColor: Colors.white,),
            MyVerticalDivider(
              height: 15,
            ),
            IconText(text: "fast delivery",icon: Icons.directions_car, iconColor: Colors.white,),
          ],
        ),
      ],
    ),);

  }
}
