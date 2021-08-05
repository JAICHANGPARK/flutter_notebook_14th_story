import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/components/salon_booking_widget.dart';

class SalonHomePage extends StatefulWidget {
  const SalonHomePage({Key? key}) : super(key: key);

  @override
  _SalonHomePageState createState() => _SalonHomePageState();
}

class _SalonHomePageState extends State<SalonHomePage> with SingleTickerProviderStateMixin {
  int _pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.green,
            ),
            SalonBookingWidget(),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.orange,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          _pageController.jumpToPage(idx);
          setState(() {
            _pageIndex = idx;
          });
        },
        currentIndex: _pageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Manage"),
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "MyBooking")
        ],
      ),
    );
  }
}
