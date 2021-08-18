import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep882_house_rental_app/provider/house_filter_provider.dart';
import 'package:provider/provider.dart';

class PriceRangeSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hfProvider = Provider.of<HouseFilterProvider>(context);
    return RangeSlider(
      values: hfProvider.priceRangeValues,
      onChanged: (rv) {
        hfProvider.setPriceRangeValues(rv);
      },
      min: 0,
      max: 5000,
    );
  }
}
