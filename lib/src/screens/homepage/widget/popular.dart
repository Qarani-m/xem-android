
import 'package:flutter/material.dart';
import 'package:xem/src/screens/constants.dart';
import 'package:xem/src/screens/homepage/widget/text.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
    required this.height,
    required this.width,
    required this.text
  });

  final double height;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: height * 0.04,
          width: width * 0.26,
          decoration: BoxDecoration(
              border: Border.all(color: Colors_.primarycolor5,width: 3),
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(height * 0.02)),
          child: Text_(
            text: text,
            fontfamily: "Kalam-regular",
            fontsize: 17,
            color: Colors_.primarycolor5,
            fontweight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: width * 0.05,
        )
      ],
    );
  }
}
