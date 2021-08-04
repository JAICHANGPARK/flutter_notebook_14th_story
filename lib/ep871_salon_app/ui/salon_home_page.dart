import 'package:flutter/material.dart';

class SalonHomePage extends StatefulWidget {
  const SalonHomePage({Key? key}) : super(key: key);

  @override
  _SalonHomePageState createState() => _SalonHomePageState();
}

class _SalonHomePageState extends State<SalonHomePage> {
  int _pageIndex = 0;
  late PageController _pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx){
          setState(() {
            _pageIndex = idx;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Manage"),
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "MyBooking")
        ],
      ),
    );
  }
}
