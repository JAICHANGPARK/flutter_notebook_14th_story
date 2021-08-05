class BookingCategory{
  String? title;
  BookingCategory(this.title);
}

List<BookingCategory> categoryItems = [
  BookingCategory("Pending"),
  BookingCategory("Accepted"),
  BookingCategory("Completed"),
  BookingCategory("Decline"),
  BookingCategory("Other"),
];