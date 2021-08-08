import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/booking.dart';

class SalonBookingItem extends StatelessWidget {
  final Booking booking;

  SalonBookingItem({Key? key, required this.booking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BOOKING #${booking.code}",
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
                    "${booking.title}",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "${booking.moreTitle}",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${booking.subTitle}",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(8),
                child: Text(
                  "\$ ${booking.price}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          booking.isPaid ?? false
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
    );
  }
}
