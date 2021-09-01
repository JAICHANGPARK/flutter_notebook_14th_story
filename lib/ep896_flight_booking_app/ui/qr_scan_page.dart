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
                  Center(child: Text("Swipe downyo see details"))
                ],
              ),
              flex: 3,
            ),
            Expanded(
              child: Placeholder(),
              flex: 15,
            ),
          ],
        ),
      ),
    );
  }
}
