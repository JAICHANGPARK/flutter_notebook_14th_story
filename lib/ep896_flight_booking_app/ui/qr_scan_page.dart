import 'package:barcode/barcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({Key? key}) : super(key: key);

  @override
  _QrScanPageState createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  final dm = Barcode.qrCode();
  String svg = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      svg = dm.toSvg("test");
    });
  }

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
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                    Center(child: Text("Swipe down yo see details"))
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              flex: 15,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        Expanded(
                            child: Container(
                          color: Colors.grey[200],
                        )),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 0,
                      top: 64,
                      bottom: 64,
                      right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "My Ticket",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            child: SvgPicture.string(svg),
                          ),
                          Container(
                            height: 48,
                            width: 240,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          )
                        ],
                      ))
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
