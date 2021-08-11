import 'package:flutter/material.dart';

class DAAHomePage extends StatefulWidget {
  const DAAHomePage({Key? key}) : super(key: key);

  @override
  _DAAHomePageState createState() => _DAAHomePageState();
}

class _DAAHomePageState extends State<DAAHomePage> {
  ValueNotifier<int> _bottomIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.teal[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("👋 Hello,", style: TextStyle(color: Colors.white)),
                                SizedBox(height: 12),
                                Text(
                                  "Dreamwalker",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                )
                              ],
                            ),
                            CircleAvatar()
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32)),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Center(
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: "Search", icon: Icon(Icons.search)),
                            ),
                          ),
                        ),
                      )),
                  Expanded(flex: 6, child: Placeholder()),
                ],
              ),
            ),
          ),
          Expanded(flex: 12, child: Placeholder()),
          Expanded(
              flex: 2,
              child: ValueListenableBuilder(
                builder: (context, value, child) {
                  return Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 3,
                              width: 24,
                              decoration: BoxDecoration(color: Colors.orange),
                            ),
                            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                          ],
                        )
                      ],
                    ),
                  );
                },
                valueListenable: _bottomIndex,
              )),
        ],
      ),
    );
  }
}
