import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/booking.dart';

class SalonBookingList extends StatelessWidget {
  const SalonBookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("BOOKING #${bookingItems[index].code}"),
              Row(
                children: [
                  Column(
                    children: [
                      Text("${bookingItems[index].title}"),
                      Text("${bookingItems[index].moreTitle}"),
                      Text("${bookingItems[index].subTitle}"),
                    ],
                  ),
                ],
              )
            ],
          ),
        );
      },
      itemCount: bookingItems.length,
    );
  }
}
