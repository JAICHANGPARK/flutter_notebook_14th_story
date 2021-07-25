import 'package:flutter/material.dart';

import 'ui/medic_care_home_page.dart';

class MedicCareApp extends StatelessWidget {
  MedicCareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedicCareHomePage(),
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
    );
  }
}
