



import 'package:flutter/foundation.dart';

class HouseFilterProvider extends ChangeNotifier{
  double _priceMin = 0.0;
  double _priceMax = 0.0;

  double get priceMin => _priceMin;
  double get priceMax => _priceMax;
}