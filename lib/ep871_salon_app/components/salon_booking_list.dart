import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/booking.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/ui/salon_booking_detail_page.dart';

import 'salon_booking_item.dart';

class SalonBookingList extends StatelessWidget {
  const SalonBookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)
              => SalonBookingDetailPage(title: bookingItems[index].code ?? "",)));
            },
            child: SalonBookingItem(bookingItems[index]),

          ),
        );
      },
      itemCount: bookingItems.length,
    );
  }
}
