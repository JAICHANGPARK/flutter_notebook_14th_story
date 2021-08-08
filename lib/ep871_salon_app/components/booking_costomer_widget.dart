import 'package:flutter/material.dart';

class BookingCustomerWidget extends StatelessWidget {
  const BookingCustomerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "customers".toUpperCase(),
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Dreamwalker",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "1234 56789",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Booking at 7 Jun 2021. 08:30 PM",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  foregroundColor: Colors.black,
                  child: Icon(Icons.call_rounded,),

                ),
                SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  foregroundColor: Colors.black,
                  child: Icon(Icons.chat_bubble),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
