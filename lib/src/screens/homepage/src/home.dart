import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xem/src/screens/cart/cart.dart';
import 'package:xem/src/screens/constants.dart';
import 'package:xem/src/screens/homepage/src/homepage.dart';
import 'package:xem/src/screens/homepage/widget/bottomappbar.dart';
import 'package:xem/src/screens/homepage/widget/homescreen.dart';
import 'package:xem/src/screens/homepage/widget/products.dart';
import 'package:xem/src/screens/homepage/widget/searchbar.dart';
import 'package:xem/src/screens/orders/orders.dart';
import 'package:xem/src/screens/profile/profile.dart';
import 'package:xem/src/screens/wallet/wallet.dart';
// ameriacan carnage poc dead mans chest,at worldsend on stranger tides

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
  int currentIndex = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var paddingLeft = width * 0.035;
    var sizedBoxHeight = height * 0.02;
    List pages = [
      HomePage(
          height: height,
          paddingLeft: paddingLeft,
          width: width,
          sizedBoxHeight: sizedBoxHeight),
      Cart(),
      Orders(),
      Wallet(),
      Profile(),
    ];

    return Scaffold(
      bottomNavigationBar: Navigationbar(),
      body: pages[currentIndex],
    );
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  BottomNavigationBar Navigationbar() {
    return BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors_.primarycolor6,
        unselectedItemColor: Colors_.primarycolor51,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: 'Cart', icon: Icon(Icons.shopping_cart_checkout)),
          BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.insights)),
          BottomNavigationBarItem(label: 'Wallet', icon: Icon(Icons.wallet)),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.person_2_sharp)),
        ]);
  }
}
