import 'package:flutter/material.dart';

import 'ui/m_detail_page.dart';

Color backgroundColor = Color(0xff27272c);
Color deepDarkColor = Color(0xff17171b);
Color deepPurpleColor = Color(0xff9292e4);
Color lightPurpleColor = Color(0xffb9b9e3);


class MedicalApp extends StatelessWidget {
  MedicalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MDetailPage(),
    );
  }
}
