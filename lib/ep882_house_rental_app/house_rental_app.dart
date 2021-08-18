import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep882_house_rental_app/provider/house_filter_provider.dart';
import 'package:provider/provider.dart';

import 'ui/house_filter_page.dart';
import 'ui/house_rental_home_page.dart';

class HouseRentalApp extends StatelessWidget {
  const HouseRentalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)  => HouseFilterProvider(),
      child: MaterialApp(
        routes: {
          "/" : (context) => HouseRentalHomePage(),
          "/search/filter" : (context) => HouseFilterPage()
        },
      ),
    );
  }
}
