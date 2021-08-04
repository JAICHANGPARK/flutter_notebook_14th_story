import 'package:flutter/material.dart';

import 'ui/salon_home_page.dart';


class SalonManagementApp extends StatelessWidget {
  const SalonManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SalonHomePage(),
    );
  }
}
