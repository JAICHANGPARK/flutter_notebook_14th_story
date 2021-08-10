import 'package:flutter/material.dart';

class DAAHomePage extends StatefulWidget {
  const DAAHomePage({Key? key}) : super(key: key);

  @override
  _DAAHomePageState createState() => _DAAHomePageState();
}

class _DAAHomePageState extends State<DAAHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.teal[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("👋 Hello,"),
                                Text("Dreamwalker")
                              ],
                            ),
                            CircleAvatar()
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                    decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(32)
                    ),
                  ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Placeholder()),
                ],
              ),
            ),
          ),
          Expanded(flex: 7, child: Placeholder()),
          Expanded(flex: 2, child: Placeholder()),
        ],
      ),
    );
  }
}
