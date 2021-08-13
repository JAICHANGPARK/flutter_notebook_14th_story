import 'package:flutter/material.dart';

import 'ui/daa_home_page.dart';
import 'ui/doctors_page.dart';

class DoctorAppointmentApp extends StatelessWidget {
  const DoctorAppointmentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/doctors": (context) => DoctorsPage(),
      },
      home: DAAHomePage(),
    );
  }
}
