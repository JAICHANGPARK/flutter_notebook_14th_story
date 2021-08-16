import 'package:freezed_annotation/freezed_annotation.dart';

part 'house.freezed.dart';

@freezed
class House with _$House {
  factory House({
    String? img,
    String? star,
    String? title,
    String? pricePerNight,
    String? location,
    String? rooms,
    String? area,
  }) = _House;
}
