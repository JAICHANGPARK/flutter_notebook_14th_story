import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class FlightAppStartPage extends StatelessWidget {
  const FlightAppStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 16,
                top: 84,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Easily book",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text("Flight", style: TextStyle(fontSize: 32)),
                    SizedBox(
                      height: 16,
                    ),
                    Text("We can easily help you to find the", style: TextStyle(fontSize: 14)),
                    Text("best flight experience", style: TextStyle(fontSize: 14)),
                  ],
                )),
            Positioned(
                left: 16,
                right: 16,
                bottom: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Swipe Right"),
                    SliderButton(
                      action: () {},
                      height: 48,
                      width: 160,
                      buttonSize: 42,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
