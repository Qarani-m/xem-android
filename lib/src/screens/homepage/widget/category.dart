import 'package:flutter/material.dart';
import 'package:xem/src/screens/constants.dart';
import 'package:xem/src/screens/homepage/widget/text.dart';

class Categories extends StatelessWidget {
  const Categories({
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
    return Container(
      height: height * 0.24,
      width: width,
      // color: Colors.red,
      child: Container(
          child: Column(
        children: [
          Container(
            height: height * 0.11,
            width: width,
            child: rows(height: height, width: width,names:Constants.cat_row1,icons: Constants.icons_row1),
          ),
          SizedBox(
            height: sizedBoxHeight,
          ),
          Container(
            height: height * 0.11,
            width: width,
            child: rows(height: height, width: width,names:Constants.cat_row2,icons: Constants.icons_row2,),
          ),
        ],
      )),
    );
  }
}

class rows extends StatelessWidget {
  const rows(
      {super.key,
      required this.height,
      required this.width,
      required this.names,
      required this.icons,
      });

  final double height;
  final double width;
  final List names;
  final List icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int index = 0; index < 4; index++)
          Container(
            margin: EdgeInsets.only(left: 10),
            height: height * 11,
            width: width * 0.2,
            child: Column(
              children: [
                Container(
                  height: height * 0.07,
                  width: width * 0.2,
                  child: CircleAvatar(
                    backgroundColor: Colors_.primarycolor3,
                    child: Icon(icons[index],color: Colors_.primarycolor6,),
                  ),
                ),
                SizedBox(
                  height: height * 0.006,
                ),
                Text_(
                  text: names[index],
                  fontfamily: "Kalam-regular",
                  fontsize: 17,
                  color: Colors_.primarycolor5,
                  fontweight: FontWeight.w500,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
