import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/components/salon_booking_detail_service_widget.dart';

class SalonBookingDetailPage extends StatelessWidget {
  String title;

  SalonBookingDetailPage({Key? key, required this.title}) : super(key: key);

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

          ],
        ),
      ),
    );
  }
}
