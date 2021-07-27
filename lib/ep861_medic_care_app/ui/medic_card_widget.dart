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
          children: [
          Row(
            children: [
              Icon(Icons.medication_outlined, color: Colors.tealAccent,),
              Text("Drug")
            ],
          )
          ],
        ),
      ),
    );
  }
}
