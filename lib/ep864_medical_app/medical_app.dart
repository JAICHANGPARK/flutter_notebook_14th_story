import 'package:flutter/material.dart';

import 'ui/medical_home_page.dart';

class MedicalApp extends StatelessWidget {
  MedicalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedicalHomePage(),
    );
  }
}
