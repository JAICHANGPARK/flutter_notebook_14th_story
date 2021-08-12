class Diary{
  String weekend;
  String day;
  bool isEvent;

  Diary(this.weekend, this.day, this.isEvent);
}



List<Diary> calItems = List.generate(7, (index) {
  DateTime dateTime = DateTime.now().subtract(Duration(days: 7-index),);
 return Diary(weekToString(dateTime.weekday), dateTime.day.toString(), isEvent);
});

String weekToString(int week){
  switch(week){
    case 1:
      DateTime.sunday
      return ""
  }

}