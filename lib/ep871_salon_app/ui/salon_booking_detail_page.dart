import 'package:flutter/material.dart';


class SalonBookingDetailPage extends StatelessWidget {
  String title;
  SalonBookingDetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Booking $title",style: TextStyle(
          color: Colors.black,
          fontSize: 14
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
