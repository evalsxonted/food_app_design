import 'package:flutter/material.dart';
import 'package:pizza/homeWidgets/bodyText.dart';
import 'package:pizza/homeWidgets/titleText.dart';

import '../constants.dart';

class Materials extends StatelessWidget {
  final List<String> materials = [
    "onion",
    "tomato",
    "oil",
    "lettuce",
    "flour",
    "cucumber"
  ];
  final List<String> materialsImages = [
    "assets/onion.png",
    "assets/tomato.png",
    "assets/oil.png",
    "assets/lettuce.png",
    "assets/bag.png",
    "assets/cucumber.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(bigPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(
            text: "Material",
            fontSize: titleSize2,
          ),
          SizedBox(height: normalPadding,),
          Container(
            height: 70,
            child: ListView.builder(
              itemCount: materials.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(right: 15),
                child: SingleMaterial(
                  material: materials[index],
                  materialImage: materialsImages[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SingleMaterial extends StatelessWidget {
  final String material;
  final String materialImage;

  const SingleMaterial({Key key, this.material, this.materialImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white24,
          ),
          child: Image.asset(
            materialImage,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 3,),
        BodyText(
          bodyText: material,
        ),
      ],
    );
  }
}
