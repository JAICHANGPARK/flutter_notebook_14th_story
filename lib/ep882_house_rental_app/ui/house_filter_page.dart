import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep882_house_rental_app/provider/house_filter_provider.dart';
import 'package:provider/provider.dart';

import 'price_range_slider_widget.dart';

class HouseFilterPage extends StatelessWidget {
  HouseFilterPage({Key? key}) : super(key: key);

  ValueNotifier<int> selectedRooms = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.clear),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Filter",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text("Price Nightly"),
                          Spacer(),
                          Consumer<HouseFilterProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                                decoration:
                                    BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text(
                                    "\$${value.priceMin}",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "-",
                              style: const TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Consumer<HouseFilterProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                                decoration:
                                    BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text(
                                    "\$${value.priceMax}",
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    PriceRangeSliderWidget(),
                    Text("Rooms"),
                    Row(
                      children: [
                        Container(),
                        Container(),
                        Container(),
                        Container(),
                        Container(),
                      ],
                    )
                  ],
                ),
              ),
              flex: 10,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Show Me",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
