import 'package:flutter/material.dart';

import 'ui/hiking_home_app.dart';

class HikingApp extends StatelessWidget {
  const HikingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HikingHomeApp(),
    );
  }
}
