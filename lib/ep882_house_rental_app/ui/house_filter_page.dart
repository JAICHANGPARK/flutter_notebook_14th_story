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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.clear),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const Expanded(
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
                          const Text("Price Nightly"),
                          const Spacer(),
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "-",
                              style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
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
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Rooms"),
                          ValueListenableBuilder<int>(
                            valueListenable: selectedRooms,
                            builder: (context, value, child) {
                              return Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        selectedRooms.value = 0;
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: value == 0 ? Colors.blue : Colors.white,
                                            border: Border.all(color: Colors.grey[400]!),
                                            borderRadius: BorderRadius.circular(4)),
                                        padding: const EdgeInsets.all(8),
                                        child: const Text("3"),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey[400]!),
                                          borderRadius: BorderRadius.circular(4)),
                                      padding: const EdgeInsets.all(8),
                                      child: const Text("4"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey[400]!),
                                          borderRadius: BorderRadius.circular(4)),
                                      padding: const EdgeInsets.all(8),
                                      child: const Text("5"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey[400]!),
                                          borderRadius: BorderRadius.circular(4)),
                                      padding: const EdgeInsets.all(8),
                                      child: const Text("6"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey[400]!),
                                          borderRadius: BorderRadius.circular(4)),
                                      padding: const EdgeInsets.all(8),
                                      child: const Text("7+"),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                        ],
                      ),
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
                  child: const Center(
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
