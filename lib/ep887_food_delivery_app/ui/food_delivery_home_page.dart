import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({Key? key}) : super(key: key);

  @override
  _FoodDeliveryHomePageState createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (idx) {
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
          physics: NeverScrollableScrollPhysics(),
          children: [
          
          ],

        ),
      ),
    );
  }
}
