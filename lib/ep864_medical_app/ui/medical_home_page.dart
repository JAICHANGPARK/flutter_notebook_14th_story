import 'package:flutter/material.dart';

Color backgroundColor = Color(0xff27272c);
Color deepDarkColor = Color(0xff17171b);

class MedicalHomePage extends StatefulWidget {
  const MedicalHomePage({Key? key}) : super(key: key);

  @override
  _MedicalHomePageState createState() => _MedicalHomePageState();
}

class _MedicalHomePageState extends State<MedicalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                child: Column(
                  children: [],
                ),
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(
                      color: deepDarkColor
                    ),
                  ))
            ],
          ),
        ));
  }
}
