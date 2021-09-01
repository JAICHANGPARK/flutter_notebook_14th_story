import 'package:flutter/material.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({Key? key}) : super(key: key);

  @override
  _QrScanPageState createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Center(child: Text("Swipe down yo see details"))
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        Expanded(
                            child: Container(
                          color: Colors.grey[200],
                        )),
                      ],
                    ),
                    left: 0,
                    top: 0,
                    bottom: 0,
                    right: 0,
                  ),
                  Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Column(
                    children: [],
                  ))
                ],
              ),
              flex: 15,
            ),
          ],
        ),
      ),
    );
  }
}
