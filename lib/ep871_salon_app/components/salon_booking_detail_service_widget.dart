import 'package:flutter/material.dart';

class SalonBookingDetailServiceWidget extends StatelessWidget {
  const SalonBookingDetailServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                  Text("Haircut(Women)"),
                  Text("Duration 30 Mins")
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(8),
                child: Text(
                  "\$ ${19.99}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
