import 'package:flutter/material.dart';
import 'package:xem/src/screens/constants.dart';
import 'package:xem/src/screens/homepage/widget/category.dart';
import 'package:xem/src/screens/homepage/widget/popular.dart';
import 'package:xem/src/screens/homepage/widget/slide.dart';
import 'package:xem/src/screens/homepage/widget/subheads.dart';
import 'package:xem/src/screens/homepage/widget/text.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({
    super.key,
    required this.height,
    required this.width,
    required this.sizedBoxHeight,
  });

  final double height;
  final double width;
  final double sizedBoxHeight;

  @override
  Widget build(BuildContext context) {
    var text = "aksmdasda";
    List images = ["assets/images/1.jpg", "assets/images/2.jpg"];
    return Column(children: [
      subheads(
        height: height,
        width: width,
        text1: "Special Offers",
        text2: "See All",
      ),
      SizedBox(
        height: sizedBoxHeight,
      ),
      Container(
        height: height * 0.23,
        width: width,
        child: Slide(images: images, height: height * 0.23, width: width),
      ),
      SizedBox(
        height: sizedBoxHeight * 1.5,
      ),
      Categories(height: height, width: width, sizedBoxHeight: sizedBoxHeight),
      SizedBox(
        height: sizedBoxHeight,
      ),
      subheads(
        height: height,
        width: width,
        text1: "Most Popular",
        text2: "See all",
      ),
      SizedBox(
        // height: sizedBoxHeight*0.8 ,
      ),
      Container(
        height: height * 0.08,
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int index = 0; index < 4; index++)
                  Popular(height: height, width: width,text: Constants.popular[index],),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: sizedBoxHeight -15,
      ),
    ]);
  }
}
