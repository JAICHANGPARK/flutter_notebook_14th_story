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

List<House> houseItems = [
  House(
      title: "City Night House",
      area: "250 ms",
      rooms: "5 Rooms",
      location: "Bowler Str. N19",
      pricePerNight: "\$450",
      star: "5.0",
      img: "https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271_960_720.jpg"),
  House(
      title: "City Night House",
      area: "250 ms",
      rooms: "5 Rooms",
      location: "Bowler Str. N19",
      pricePerNight: "\$450",
      star: "5.0",
      img: "https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271_960_720.jpg"),
  House(
      title: "City Night House",
      area: "250 ms",
      rooms: "5 Rooms",
      location: "Bowler Str. N19",
      pricePerNight: "\$450",
      star: "5.0",
      img: "https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271_960_720.jpg"),

];
