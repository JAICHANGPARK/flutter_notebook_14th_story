class Diary {
  String weekday;
  String day;
  bool isEvent;

  Diary(this.weekday, this.day, this.isEvent);
}

List<Diary> calItems = List.generate(7, (index) {
  DateTime dateTime = DateTime.now().subtract(Duration(days: 7 - index));
  return Diary(weekToString(dateTime.weekday), dateTime.day.toString(), index % 3 == 0 ? true : false);
});

String weekToString(int week) {
  switch (week) {
    case 1:
      return "MO";
    case 2:
      return "TU";
    case 3:
      return "WE";
    case 4:
      return "TH";
    case 5:
      return "FR";
    case 6:
      return "SA";
    case 7:
      return "SU";
    default:
      return "??";
  }
}
