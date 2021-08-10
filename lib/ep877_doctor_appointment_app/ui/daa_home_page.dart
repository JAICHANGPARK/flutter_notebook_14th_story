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
          Expanded(flex : 5,child: Placeholder()),
          Expanded(flex : 6,child: Placeholder()),
          Expanded(flex : 2,child: Placeholder()),
        ],
      ),
    );
  }
}
