
import 'package:flutter/material.dart';
import 'package:pizza/constants.dart';
import 'package:pizza/homeWidgets/about.dart';
import 'package:pizza/homeWidgets/button.dart';
import 'package:pizza/homeWidgets/material.dart';
import 'homeWidgets/appBar.dart';
import 'homeWidgets/details.dart';
import 'homeWidgets/pictureCard.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if(orientation == Orientation.portrait){
              return phoneBody();
            }else {
              return tabBody();
            }
          },
        ),
      ),
    );
  }
}
class phoneBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyAppBar(),
              PictureCard(orientation: "portrait"),
              SizedBox(height: 10,),
              Details(),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Materials()),
              About(),

            ],
          ),
        ),
        Positioned(
          bottom: -1,
            right: 1,
            left: 1,
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              color: bgColor,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(text: "Buy Now",color: Colors.red,),
                  SizedBox(width: 20,),
                  MyButton(text: "Add To Cart",color: Colors.orangeAccent,),

                ],
              ),
            ))
      ],
    );
  }
}
class tabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PictureCard(orientation: "landscape"),
        Expanded(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyAppBar(),
                    SizedBox(height: 10,),
                    Details(),
                    SizedBox(height: 10,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Materials()),
                    About(),

                  ],
                ),
              ),
              Positioned(
                  bottom: -1,
                  right: 1,
                  left: 1,
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    color: bgColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton(text: "Buy Now",color: Colors.red,),
                        SizedBox(width: 20,),
                        MyButton(text: "Add To Cart",color: Colors.orangeAccent,),

                      ],
                    ),
                  ))

            ],
          ),
        ),

      ],
    );
  }
}


