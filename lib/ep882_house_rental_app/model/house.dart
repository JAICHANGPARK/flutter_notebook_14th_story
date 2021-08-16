import 'package:freezed_annotation/freezed_annotation.dart';

part 'house.g.dart';
part 'house.freezed.dart';

@freezed
class House with _$House {
  factory House({
    String? img,
  }) = _House;
}
