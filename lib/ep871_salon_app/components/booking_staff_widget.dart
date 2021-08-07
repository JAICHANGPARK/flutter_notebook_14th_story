import 'package:flutter/material.dart';

class BookingStaffWidget extends StatelessWidget {
  const BookingStaffWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Staff".toUpperCase(),
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(16)),
                ),
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
                        "Stylist",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
