import 'package:freezed_annotation/freezed_annotation.dart';
import 'house.g.dart';
import 'house.freezed.dart';

@freezed
class House with _$House {
  factory House({
    String? img,
  }) = _House;
}
