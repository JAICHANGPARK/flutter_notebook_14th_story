import 'package:flutter/cupertino.dart';
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
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(Icons.apps),
                    color: hikingGreenColor,
                    onPressed: () {},
                  ),
                )),
                Expanded(
                    flex: 6,
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
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                "Let's go hiking, Dream!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(4)),
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, icon: Icon(Icons.search), hintText: "Search your location"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text("Choose your skill level"),
            ),
            SizedBox(
              height: 36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(color: hikingGreenColor, borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Center(
                      child: Text(
                        "Easy",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(4)),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      child: const Center(
                        child: Text(
                          "Medium",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(4)),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: const Center(
                      child: Text(
                        "Hard",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select yout trails"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.tune_outlined),
                  color: Colors.grey,
                )
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: List.generate(
                10,
                (index) => Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image:
                              NetworkImage("https://cdn.pixabay.com/photo/2016/11/20/08/17/squirrel-1842152__340.jpg"),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Positioned(
                              right: 12,
                                top: 12,
                                child: IconButton(
                              color: Colors.white,
                              icon: Icon(
                                Icons.favorite,
                              ), onPressed: () {  },
                            ))
                          ],
                        ),
                        flex: 6,
                      ),
                      Expanded(
                        child: Placeholder(),
                        flex: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
