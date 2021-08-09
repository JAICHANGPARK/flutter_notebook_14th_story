import 'package:rpgnamegenerator/rpgnamegenerator.dart';

class Staff {
  String? profileImg;
  String? name;
  String? subtitle;
  String? services;
  bool isOn;

  Staff({this.profileImg, this.name, this.subtitle, this.services, this.isOn = true});
}

List<Staff> manageStaffItems = [
  Staff(
      profileImg: "https://cdn.pixabay.com/photo/2017/12/01/08/02/paint-2990357__340.jpg",
      name: RpgNameGenerator.getName("human", 'male'),
      subtitle: "stylist",
      services: "Caters to all/23 Services",
      isOn: true),
];
