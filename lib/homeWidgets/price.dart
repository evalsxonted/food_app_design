import 'package:flutter/material.dart';
import 'package:pizza/constants.dart';

class PriceText extends StatelessWidget {
  final double price;
  const PriceText({Key key, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String priceText = "\$" + price.toStringAsFixed(2) ;
    return Text(priceText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: titleSize2, color: priceColor),);
  }
}
