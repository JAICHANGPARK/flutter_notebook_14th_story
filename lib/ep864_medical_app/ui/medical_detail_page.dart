import 'package:flutter/material.dart';

import 'medical_home_page.dart';

class MedicalDetailPage extends StatelessWidget {

  const MedicalDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit), ),
            ],
          ),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
