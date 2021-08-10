import 'package:flutter/material.dart';

import 'ui/daa_home_page.dart';


class DoctorAppointmentApp extends StatelessWidget {
  const DoctorAppointmentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DAAHomePage(),
    );
  }
}
