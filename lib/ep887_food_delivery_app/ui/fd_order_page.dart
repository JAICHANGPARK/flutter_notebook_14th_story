import 'package:flutter/material.dart';

class FdOrderPage extends StatefulWidget {
  const FdOrderPage({Key? key}) : super(key: key);

  @override
  _FdOrderPageState createState() => _FdOrderPageState();
}

class _FdOrderPageState extends State<FdOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Home"),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    Text("South Korea, Seoul"),
                  ],
                )
              ],
            )),
        Expanded(flex: 15, child: Placeholder()),
      ],
    );
  }
}
