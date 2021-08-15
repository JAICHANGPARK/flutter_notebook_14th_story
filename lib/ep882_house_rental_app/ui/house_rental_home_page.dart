import 'package:flutter/material.dart';

class HouseRentalHomePage extends StatefulWidget {
  const HouseRentalHomePage({Key? key}) : super(key: key);

  @override
  _HouseRentalHomePageState createState() => _HouseRentalHomePageState();
}

class _HouseRentalHomePageState extends State<HouseRentalHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Placeholder()),
            TabBar(
              tabs: [
                Tab(text: "Recommended",),
                Tab(text: "Nearest",),
                Tab(text: "Popular",),
              ],
              controller: _tabController,
            ),
            Expanded(child: Placeholder())
          ],
        ),
      ),
    );
  }
}
