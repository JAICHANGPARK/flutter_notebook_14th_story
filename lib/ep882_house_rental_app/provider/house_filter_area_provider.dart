import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HouseFilterAreaProvider extends ChangeNotifier {
  double _areaMin = 300;
  double _areaMax = 2500.0;

  late RangeValues _areaRangeValues;
  
  HouseFilterAreaProvider() {
    _areaRangeValues = RangeValues(_areaMin, _areaMax);
  }

  double get areaMin => _areaMin;

  double get areaMax => _areaMax;

  RangeValues get areaRangeValues => _areaRangeValues;

  setAreaRangeValues(RangeValues rangeValues) {
    _areaRangeValues = rangeValues;
    _areaMin = _areaRangeValues.start.floorToDouble();
    _areaMax = _areaRangeValues.end.floorToDouble();
    notifyListeners();
  }
}
