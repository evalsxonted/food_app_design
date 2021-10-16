import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pizza/constants.dart';
import 'package:pizza/homeWidgets/titleText.dart';

class MyAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20,right: 20, left: 20, bottom: 10),
      color: cardColor,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white10,
              shape: BoxShape.circle
            ),
            child: IconButton(icon: Icon(Icons.arrow_back_ios, color: iconColor,), onPressed: arrowBackAction),
          ),
          TitleText(fontSize: titleSize1, text: "Details",),
          Container(
            padding: EdgeInsets.only(left: 2),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white10,
                shape: BoxShape.circle
            ),
            child: IconButton(icon: Icon(Icons.shopping_basket, color: iconColor,), onPressed: shoppingBagAction),
          ),
        ],
      ),
    );
  }
  arrowBackAction(){
    log("arrowBackAction");
  }
  shoppingBagAction(){
    log("shoppingBagAction");
  }
}

