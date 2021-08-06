import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/booking.dart';



class SalonBookingList extends StatelessWidget {
  const SalonBookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){

      return Container();

    },
    itemCount: bookingItems.length,);
  }
}
