import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep882_house_rental_app/model/house.dart';

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
      resizeToAvoidBottomInset: false,
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
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Search", icon: Icon(Icons.search), border: InputBorder.none),
                              ),
                            )),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                              child: Center(
                                child: Icon(
                                  Icons.filter_alt,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
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
                labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                controller: _tabController,
                tabs: const [
                  Tab(text: "Recommended"),
                  Tab(text: "Nearest"),
                  Tab(text: "Popular"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                        itemCount: houseItems.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height / 3,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            right: 0,
                                            top: 0,
                                            bottom: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                      houseItems[index].img ?? "",
                                                    ),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                    Container(
                      child: Center(
                        child: Text("2"),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("3"),
                      ),
                    ),
                  ],
                ),
                flex: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
