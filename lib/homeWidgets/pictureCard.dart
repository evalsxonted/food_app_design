import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza/constants.dart';

class PictureCard extends StatelessWidget {
  final String orientation;
  const PictureCard({Key key, this.orientation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth;
    double cardHeight;
    if(orientation == "portrait"){
      cardWidth=  MediaQuery.of(context).size.width;
      cardHeight= cardWidth /1.8 ;
    }
    else{
      cardHeight= MediaQuery.of(context).size.height;
      cardWidth= cardHeight/ 1.8;
    }
    double imagePadding = cardWidth > cardHeight ? cardHeight /10  : cardWidth/10;
    return Container(
      height: cardHeight,
      width: cardWidth,
      padding: EdgeInsets.only(
        left: imagePadding,
        right: imagePadding,
        bottom: imagePadding
      ),
      decoration: orientation == "portrait" ? BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
      ): BoxDecoration(
        color: cardColor,
      ),
      child: Container(
        decoration:   BoxDecoration(
          image: DecorationImage(image:  AssetImage("assets/pizza.png", ), fit: BoxFit.contain, ),
        )
      ),
    );
  }
}
