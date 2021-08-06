class Booking {
  String? code;
  String? title;
  String? moreTitle;
  String? subTitle;
  int? price;
  bool? isPaid;

  Booking({this.code, this.title, this.moreTitle, this.subTitle, this.price, this.isPaid});
}

List<Booking> bookingItems =[
  Booking(code: "53623722", title: "Hair sps, Haircut(Women)", isPaid: false,
  moreTitle: "+2 more",
    price: 1000,
    subTitle:"Arriving 7 Jun 2021, 08:11 PM"
  ),
];