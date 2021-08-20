import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/food_delivery_home_page.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FoodDeliveryHomePage(),
    );
  }
}
