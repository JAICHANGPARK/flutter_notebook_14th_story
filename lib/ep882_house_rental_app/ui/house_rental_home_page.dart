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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Colors.blue,
                                  ),
                                  Text("Location")
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Vienna, Austria"),
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  content: Text("Vienna, Austria"),
                                                ));
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.blue,
                                      ))
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(height: 24,),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          children: [Expanded(child: TextField())],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 4,
              ),
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    text: "Recommended",
                  ),
                  Tab(
                    text: "Nearest",
                  ),
                  Tab(
                    text: "Popular",
                  ),
                ],
                controller: _tabController,
              ),
              Expanded(
                child: Placeholder(),
                flex: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
