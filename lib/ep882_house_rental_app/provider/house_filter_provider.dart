import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HouseFilterProvider extends ChangeNotifier {
  double _priceMin = 0.0;
  double _priceMax = 0.0;

  double get priceMin => _priceMin;

  double get priceMax => _priceMax;

  HouseFilterProvider() {
    _priceRangeValues = RangeValues(_priceMin, _priceMax);
  }

  late RangeValues _priceRangeValues;

  RangeValues get priceRangeValues => _priceRangeValues;
}
