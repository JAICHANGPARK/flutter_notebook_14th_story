import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'fd_go_out_page.dart';
import 'fd_grocery_page.dart';
import 'fd_nutrition_page.dart';
import 'fd_order_page.dart';
import 'fd_pro_page.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({Key? key}) : super(key: key);

  @override
  _FoodDeliveryHomePageState createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  int _tabIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (idx) {
          _pageController.jumpToPage(idx);
          setState(() {
            _tabIndex = idx;
          });
        },
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(LineIcons.shoppingBag), label: "Order"),
          BottomNavigationBarItem(icon: Icon(LineIcons.chargingStation), label: "Go Out"),
          BottomNavigationBarItem(icon: Icon(LineIcons.alternateShield), label: "Pro"),
          BottomNavigationBarItem(icon: Icon(LineIcons.store), label: "Grocery"),
          BottomNavigationBarItem(icon: Icon(LineIcons.heart), label: "Nutrition"),
        ],
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (idx) {},
          children: [
            FdOrderPage(),
            FdGoOutPage(),
            FdProPage(),
            FdGroceryPage(),
            FdNutritionPage(),
          ],
        ),
      ),
    );
  }
}
