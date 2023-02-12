import 'package:flutter/material.dart';
import 'package:xem/src/screens/constants.dart';
import 'package:xem/src/screens/homepage/widget/text.dart';

class Slide extends StatelessWidget {
  const Slide({
    super.key,
    required this.images,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;
  final List images;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Constants.percentage.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xFFe7e7e7),
              borderRadius: BorderRadius.circular(height * 0.1),
            ),
            child: Row(children: [
              Container(
                height: height,
                width: width * 0.53,
                // color: Colors.red,
                padding: EdgeInsets.only(left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.08,
                      ),
                      Text_(
                        text: Constants.percentage[index],
                        fontfamily: "Kalam-bold",
                        fontsize: 35,
                        color: Colors_.primarycolor5,
                        fontweight: FontWeight.w600,
                      ),
                      // SizedBox(height: height*0.03,),
                      Text_(
                        text: Constants.heading[index],
                        fontfamily: "Kalam-regular",
                        fontsize: 25,
                        color: Colors_.primarycolor5,
                        fontweight: FontWeight.w600,
                      ),
                      Text_(
                        text: Constants.subheading[index],
                        fontfamily: "Kalam-light",
                        fontsize: 16,
                        color: Colors_.primarycolor5,
                        fontweight: FontWeight.w500,
                      ),
                      Container(
                          height: height * 0.1,
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Dots(
                                width: width,
                                count: index,
                              ),
                            ],
                          ))
                    ]),
              ),
              Container(
                height: height,
                width: width * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Constants.images[index]))),
              )
            ]),
          );
        });
  }
}

class Dots extends StatelessWidget {
  const Dots({
    super.key,
    required this.width,
    required this.count,
  });

  final double width;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (int index = 0; index < Constants.percentage.length; index++)
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: count==index?Colors_.primarycolor4:Colors_.primarycolor1,
              borderRadius: BorderRadius.circular(20)),
          
        ),
    ]
        );
  }
}
