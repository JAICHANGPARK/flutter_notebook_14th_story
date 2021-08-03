import 'package:flutter/material.dart';

import 'ui/m_detail_page.dart';


class MedicalApp extends StatelessWidget {
  MedicalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MDetailPage(),
    );
  }
}
