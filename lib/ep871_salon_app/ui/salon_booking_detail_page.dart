import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/components/booking_costomer_widget.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/components/booking_staff_widget.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/components/salon_booking_detail_service_widget.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/components/salon_booking_item.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/booking.dart';

class SalonBookingDetailPage extends StatelessWidget {
  String title;
  Booking booking;

  SalonBookingDetailPage({Key? key, required this.title, required this.booking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Booking $title",
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SalonBookingDetailServiceWidget(),
            SizedBox(height: 8),
            BookingStaffWidget(),
            SizedBox(height: 8),
            BookingCustomerWidget(),
            SizedBox(height: 8),

            SalonBookingItem(booking: booking)
          ],
        ),
      ),
    );
  }
}
