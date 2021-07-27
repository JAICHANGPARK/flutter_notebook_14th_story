import 'package:flutter/material.dart';

class MedicCardWidget extends StatelessWidget {
  MedicCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.medication_outlined,
                  color: Colors.greenAccent,
                  size: 14,
                ),
                Text(
                  "Drug",
                  style: TextStyle(color: Colors.greenAccent, fontSize: 12),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                "Folic Acid",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2 Pills",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text("02:00 am",
                  style: TextStyle(fontSize: 12, color: Colors.grey),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
