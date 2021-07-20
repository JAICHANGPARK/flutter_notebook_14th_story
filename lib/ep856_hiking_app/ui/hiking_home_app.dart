import 'package:flutter/material.dart';

class HikingHomeApp extends StatefulWidget {
  HikingHomeApp({Key? key}) : super(key: key);

  @override
  _HikingHomeAppState createState() => _HikingHomeAppState();
}

class _HikingHomeAppState extends State<HikingHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              Row(
                children: [
                  Expanded(child: Placeholder()),
                  Expanded(
                      flex: 3,
                      child: Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Carpathians, Ukraine")
                    ],
                  )),
                  Expanded(child: Placeholder()),
                ],
              )
          ],
        ),
      ),
    );
  }
}