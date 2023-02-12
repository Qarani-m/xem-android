
import 'package:flutter/material.dart';
import 'package:xem/src/screens/homepage/widget/homescreen.dart';
import 'package:xem/src/screens/homepage/widget/products.dart';
import 'package:xem/src/screens/homepage/widget/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.height,
    required this.paddingLeft,
    required this.width,
    required this.sizedBoxHeight,
  });

  final double height;
  final double paddingLeft;
  final double width;
  final double sizedBoxHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: height * 0.06, left: paddingLeft, right: paddingLeft),
      child: Column(
        children: [
          Searchbar(height: height, width: width),
          SizedBox(
            height: sizedBoxHeight,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Homescreen(
                    height: height,
                    width: width,
                    sizedBoxHeight: sizedBoxHeight),
                // Homescreen(height: height, width: width, sizedBoxHeight: sizedBoxHeight),
                Column(
                  children: [
                  for (int index = 0; index < 4; index++)
                    Products(height: height, width: width),
                    SizedBox(
                      height: 200,
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
