import 'package:flutter/material.dart';

class SalonBookingWidget extends StatelessWidget {
  const SalonBookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                children: [
                  Text("My Bookings"),
                  Divider(),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                    return Container();
                  },

                  itemCount: 10,),


                ],
              ),
            )),
        SizedBox(height: 16,),
        Expanded(
            flex: 15,
            child: Placeholder()),
      ],
    );
  }
}
