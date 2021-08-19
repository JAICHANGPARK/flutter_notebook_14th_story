import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep882_house_rental_app/provider/house_filter_area_provider.dart';
import 'package:flutter_notebook_14th_story/ep882_house_rental_app/provider/house_filter_provider.dart';
import 'package:provider/provider.dart';

class AreaRangeSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hfProvider = Provider.of<HouseFilterAreaProvider>(context);
    return RangeSlider(
      values: hfProvider.areaRangeValues,
      onChanged: (rv) {
        hfProvider.setAreaRangeValues(rv);
      },
      min: 0,
      max: 1500,
    );
  }
}
