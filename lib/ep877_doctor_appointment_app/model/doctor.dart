class Doctor {
  String? profileImg;
  String? name;
  String? subtitle;
  String? price;

  String? year;
  String? like;

  Doctor({this.profileImg, this.name, this.subtitle, this.price, this.year, this.like});
}

List<Doctor> doctorItems = [
  Doctor(
      profileImg: "https://cdn.pixabay.com/photo/2017/01/29/21/16/nurse-2019420_960_720.jpg",
      name: "Darrel Steward",
      subtitle: "General Practitioner",
      year: "3",
      like: "92",
      price: "80")
];
