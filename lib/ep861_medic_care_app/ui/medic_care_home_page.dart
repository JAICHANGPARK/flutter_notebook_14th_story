import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicCareHomePage extends StatefulWidget {
  MedicCareHomePage({Key? key}) : super(key: key);

  @override
  _MedicCareHomePageState createState() => _MedicCareHomePageState();
}

class _MedicCareHomePageState extends State<MedicCareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar
                          (
                          radius: 28,
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Good Morning."),
                            Text("Dreamwalker"),
                          ],
                        )
                      ],
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [

                            ],
                          )
                        ],
                      ),
                    ),
                    flex: 15,
                  ),
                ],
              ),
              flex: 18,
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      child: PhysicalModel(
                        color: Colors.black.withOpacity(0.2),
                        elevation: 2,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              )),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.home),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Home")
                                ],
                              )),
                              Expanded(
                                  child: Center(
                                child: Icon(Icons.settings_outlined),
                              )),
                            ],
                          ),
                        ),
                      ),
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 16,
                    ),
                    Positioned(
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add),
                      ),
                      left: 0,
                      right: 0,
                      top: 0,
                    )
                  ],
                ),
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
