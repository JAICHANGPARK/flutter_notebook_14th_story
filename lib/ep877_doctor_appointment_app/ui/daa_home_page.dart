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
                  SizedBox(height: 64,),
                  Expanded(child: Placeholder()),
                  Expanded(child: Container(
                    decoration: BoxDecoration(),
                  )),
                  Expanded(child: Placeholder()),
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
