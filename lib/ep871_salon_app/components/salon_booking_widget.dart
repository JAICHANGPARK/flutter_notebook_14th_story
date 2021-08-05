import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/category.dart';

class SalonBookingWidget extends StatelessWidget {
  const SalonBookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                      child: Center(
                          child: Text(
                    "My Bookings",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ))),
                  Divider(),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Center(
                            child: Text(categoryItems[index]),
                          ),
                        );
                      },
                      itemCount: categoryItems.length,
                    ),
                  ),
                ],
              ),
            )),
        SizedBox(height: 8),
        Expanded(flex: 15, child: Placeholder()),
      ],
    );
  }
}
