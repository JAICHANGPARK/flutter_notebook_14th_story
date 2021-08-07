import 'package:flutter/material.dart';


class SalonBookingDetailServiceWidget extends StatelessWidget {
  const SalonBookingDetailServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Services".toUpperCase()),
          Row(
            children: [
              Container(
                height: 42,
                width: 42,
                color: Colors.blue,
              ),
              Column(
                children: [

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
