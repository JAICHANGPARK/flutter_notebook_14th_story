import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/page/clothes_home_page.dart';
class ClothesApp extends StatelessWidget {
  const ClothesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ClothesHomePage(),
    );
  }
}
