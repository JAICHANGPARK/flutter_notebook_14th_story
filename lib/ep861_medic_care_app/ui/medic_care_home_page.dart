import 'package:flutter/material.dart';

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
              child: Placeholder(),
              flex: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Stack(
                  children: [
                    Positioned(child: Container(
                      color: Colors.pink,
                    ), left: 0,right: 0,
                    bottom: 0,
                    top: 16,)
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