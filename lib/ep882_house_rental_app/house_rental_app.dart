import 'package:flutter/material.dart';

import 'ui/house_rental_home_page.dart';

class HouseRentalApp extends StatelessWidget {
  const HouseRentalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => HouseRentalHomePage()
      },
    );
  }
}
