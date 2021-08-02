import 'package:flutter/material.dart';

import 'medical_home_page.dart';

class MedicalDetailPage extends StatelessWidget {
  const MedicalDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new_outlined),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(child: Placeholder(), flex: 3,),
            Expanded(child: Placeholder(), flex: 6,),
            Expanded(child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
              return Container();
            }), flex: 2,),
            Expanded(child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                color: Colors.white.withOpacity(0.1)
              ),
            ), flex: 8,),
          ],
        ),
      ),
    );
  }
}
