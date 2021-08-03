import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep864_medical_app/medical_app.dart';

class MDetailPage extends StatelessWidget {
  const MDetailPage({Key? key}) : super(key: key);

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
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                  ),
                  Column(
                    children: [
                      Text("Dreamwalker", style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),),
                      Text("27 yo Flutter Lover",

                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white.withOpacity(0.15)
                      ),)
                    ],
                  )
                ],
              ),
              flex: 3,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Placeholder()),
                  Expanded(child: Placeholder()),
                ],
              ),
              flex: 6,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container();
                  }),
              flex: 2,
            ),
            Expanded(
              child: Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(36), color: Colors.white.withOpacity(0.1)),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
