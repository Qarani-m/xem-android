
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            product(height: height, width: width),
            product(height: height, width: width),
          ],
        ),
        SizedBox(height:height*0.04)
      ],
    );
  }
}

class product extends StatelessWidget {
  const product({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    var sizedBoxHeight = height * 0.02;

    return Container(
      height: height * 0.32,
      width: width * 0.45,
      color: Color(0xFFf3f3f3),
      child: Column(children: [
        Container(
          height: height * 0.19,
          width: width * 0.45,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/images/1.jpg"))),
        ),
        SizedBox(
          height: sizedBoxHeight * 0.5,
        ),
        Container(
          // color: Colors.red,
          height: height * 0.03,
          width: width * 0.45,
          child: Text("Snake leather bag",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: sizedBoxHeight * 0.5,
        ),
        Container(
          height: height * 0.03,
          width: width * 0.45,
          child: Row(
            children: [
              Container(
                height: height * 0.03,
                width: (width * 0.45) * 0.48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.star_border_outlined),
                    Text("4.5"),
                    Text("|")
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: height * 0.03,
                width: (width * 0.45) * 0.52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.009)),
                child: Text("sold 2020"),
              ),
              
            ],
          ),
        ),
        SizedBox(
          height: sizedBoxHeight * 0.5,
        ),
              Container(
                height: height * 0.03,
                width: width * 0.45,
                child: Text("\$ 400.00",
                    style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              )
      ]),
    );
  }
}
