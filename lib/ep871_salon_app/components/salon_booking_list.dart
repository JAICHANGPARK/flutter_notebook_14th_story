import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/booking.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/ui/salon_booking_detail_page.dart';

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
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BOOKING #${bookingItems[index].code}",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${bookingItems[index].title}",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "${bookingItems[index].moreTitle}",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "${bookingItems[index].subTitle}",
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "\$ ${bookingItems[index].price}",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  bookingItems[index].isPaid ?? false
                      ? Container(
                          decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)),
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(
                            "10% ADVANCE PAID",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        )
                      : Container(),
                  SizedBox(
                    height: 23,
                  ),
                  SizedBox(
                    height: 42,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.red[100],
                          ),
                          child: const Center(
                            child: Text(
                              "Decline",
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.red),
                            ),
                          ),
                        )),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.grey[200],
                          ),
                          child: const Center(
                            child: Text(
                              "Accept",
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: bookingItems.length,
    );
  }
}
