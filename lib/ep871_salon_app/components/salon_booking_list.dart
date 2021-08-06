import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/booking.dart';

class SalonBookingList extends StatelessWidget {
  const SalonBookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("BOOKING #${bookingItems[index].code}", style: TextStyle(fontSize: 12),),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${bookingItems[index].title}", style: TextStyle(fontSize: 12),),
                        Text("${bookingItems[index].moreTitle}", style: TextStyle(fontSize: 10),),
                        SizedBox(height: 8,),
                        Text("${bookingItems[index].subTitle}", style: TextStyle(fontSize: 10),),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]
                      ),
                      padding: EdgeInsets.all(8),
                      child: Text("\$ ${bookingItems[index].price}"),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: bookingItems.length,
    );
  }
}
