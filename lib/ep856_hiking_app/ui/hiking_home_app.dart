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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: IconButton(
                    icon: Icon(
                      Icons.apps,
                    ),
                    color: Colors.grey,
                    onPressed: () {},
                  )),
                  Expanded(
                      flex: 3,
                      child: Row(
                        children: [Icon(Icons.location_on), Text("Carpathians, Ukraine")],
                      )),
                  Expanded(child: Placeholder()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
