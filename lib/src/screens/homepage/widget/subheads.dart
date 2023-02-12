
import 'package:flutter/material.dart';
import 'package:xem/src/screens/homepage/widget/text.dart';

class subheads extends StatelessWidget {
  const subheads({
    super.key,
    required this.height,
    required this.width,
    required this.text1,
    required this.text2,
  });

  final double height;
  final double width;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.06,
      width: width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text_(
          text: text1,
          fontfamily: "Kalam-bold",
          fontsize: 22,
          color: Colors.black,
          fontweight: FontWeight.w600,
        ),
        Text_(
          text: text2,
          fontfamily: "Kalam-light",
          fontsize: 18,
          color: Colors.black,
          fontweight: FontWeight.w600,
        )
      ]),
    );
  }
}
