import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Text_ extends StatelessWidget {
  final String fontfamily;
  final double fontsize;
  final FontWeight fontweight;
  final Color color;
  final String text;

  Text_(
      {super.key,
      required this.text,
      required this.fontsize,
      required this.fontweight,
      required this.fontfamily,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
        style: TextStyle(
          fontSize: fontsize,
          fontWeight: fontweight,
          fontFamily: fontfamily,
          color: color,
        ));
  }
}
