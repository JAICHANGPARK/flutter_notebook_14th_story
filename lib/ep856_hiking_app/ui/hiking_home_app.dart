import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Carpathians, Ukraine")
                        ],
                      )),
                  Expanded(
                    child: Center(
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            children: [
                Column(
                  children: [
                    Icon(LineIcons.home),
                    Container(
                      height: 3,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Colors.green
                      ),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
