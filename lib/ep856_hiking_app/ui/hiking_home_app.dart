import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

Color hikingGreenColor = Color(0xff297653); // 4

class HikingHomeApp extends StatefulWidget {
  HikingHomeApp({Key? key}) : super(key: key);

  @override
  _HikingHomeAppState createState() => _HikingHomeAppState();
}

class _HikingHomeAppState extends State<HikingHomeApp> {
  int _bottomIndex = 0;

  final List<Widget> _widgetItems = [
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: IconButton(
                  icon: Icon(Icons.apps),
                  color: hikingGreenColor,
                  onPressed: () {},
                )),
                Expanded(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: hikingGreenColor),
                        SizedBox(width: 8),
                        Text("Carpathians, Ukraine")
                      ],
                    )),
                Expanded(
                  child: Center(
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(color: hikingGreenColor, borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text("Let's go hiking, Alina!"),
            ),
            Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8)),
            )
          ],
        ),
      ),
    ),
    Container(color: Colors.blue),
    Container(color: hikingGreenColor)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _widgetItems.elementAt(_bottomIndex)),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _bottomIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _bottomIndex == 0 ? Icons.home : LineIcons.home,
                      size: 32,
                      color: _bottomIndex == 0 ? hikingGreenColor : Colors.grey,
                    ),
                    SizedBox(height: 8),
                    Container(
                        height: 3,
                        width: 24,
                        decoration: BoxDecoration(color: _bottomIndex == 0 ? hikingGreenColor : Colors.white))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _bottomIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _bottomIndex == 1 ? Icons.location_on : LineIcons.mapMarker,
                      size: 32,
                      color: _bottomIndex == 1 ? hikingGreenColor : Colors.grey,
                    ),
                    SizedBox(height: 8),
                    Container(
                        height: 3,
                        width: 24,
                        decoration: BoxDecoration(color: _bottomIndex == 1 ? hikingGreenColor : Colors.white))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _bottomIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _bottomIndex == 2 ? Icons.favorite : LineIcons.heartAlt,
                      size: 32,
                      color: _bottomIndex == 2 ? hikingGreenColor : Colors.grey,
                    ),
                    SizedBox(height: 8),
                    Container(
                        height: 3,
                        width: 24,
                        decoration: BoxDecoration(color: _bottomIndex == 2 ? hikingGreenColor : Colors.white))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
