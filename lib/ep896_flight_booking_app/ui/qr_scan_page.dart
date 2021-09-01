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
      body: Column(
        children: [
          Expanded(child: Placeholder(), flex: 3,),
          Expanded(child: Placeholder(), flex: 15,),
        ],
      ),
    );
  }
}
