import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep882_house_rental_app/provider/house_filter_provider.dart';
import 'package:provider/provider.dart';

class HouseFilterPage extends StatelessWidget {
  const HouseFilterPage({Key? key}) : super(key: key);

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
                          Consumer<HouseFilterProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                                decoration:
                                    BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text(
                                    "${value.priceMin}",
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
                            child: Text("-"),
                          ),
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
