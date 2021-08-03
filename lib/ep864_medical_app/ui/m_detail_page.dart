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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dreamwalker",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "27 yo Flutter Lover",
                          style: TextStyle(fontSize: 22, color: Colors.white.withOpacity(0.15)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              flex: 3,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("SYS", style: TextStyle(
                                color: Colors.white,
                              ),),
                              Icon(Icons.favorite,color: Colors.white,),
                            ],
                          ),
                          Row(
                            children: [
                              Text("136", style: TextStyle(
                                color: Colors.white,
                                fontSize: 36
                              ),),
                              Text(" mmHg",  style: TextStyle(
                                  color: Colors.white.withOpacity(0.15),
                                  fontSize: 16
                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
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
                child: Column(
                  children: [
                    Text("General information"),
                    Expanded(child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Date of birth"),
                            Text("01 Jan 1900"),
                          ],
                        )
                      ],
                    ))
                  ],
                ),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
