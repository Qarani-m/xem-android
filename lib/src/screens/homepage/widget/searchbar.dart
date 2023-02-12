import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      height: height * 0.08,
      width: width,
      // color: Colors.red,
      child: TextFormField(
                  controller: controller,
                  
                  // showCursor: false,
                 
                  decoration: InputDecoration(
                    
                    fillColor: Color(0xFFf3f3f3),
                    filled: true,
                    prefixIcon: Icon(weight:20,Icons.search_rounded,color: Color.fromRGBO(0, 0, 0, 0.3),),
                    hintText: "Search",
                    hintStyle: TextStyle(fontWeight:FontWeight.w200,fontSize: 17,color: Color.fromRGBO(0, 0, 0, 0.5)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color(0xFFf3f3f3),
                          width: 1.0,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color(0xFF2e3333),
                          width: 1.0,
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        )),
                  ),
                 
                ),
    );
  }
}