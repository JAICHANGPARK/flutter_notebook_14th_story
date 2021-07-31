import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep864_medical_app/mock/mock_schedule.dart';

Color backgroundColor = Color(0xff27272c);
Color deepDarkColor = Color(0xff17171b);
Color deepPurpleColor = Color(0xff9292e4);
Color lightPurpleColor = Color(0xffb9b9e3);

class CalDate {
  int day;
  String weekend;
  bool isEvent;

  CalDate(this.day, this.weekend, {this.isEvent = false});
}

class MedicalHomePage extends StatefulWidget {
  const MedicalHomePage({Key? key}) : super(key: key);

  @override
  _MedicalHomePageState createState() => _MedicalHomePageState();
}

class _MedicalHomePageState extends State<MedicalHomePage> {
  final List<CalDate> _calItems = List.generate(
      10,
      (index) => CalDate(
          DateTime.now()
              .add(Duration(
                days: index,
              ))
              .day,
          "Tue",
          isEvent: index % 4 == 0 ? true : false));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                child: Column(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: CircleAvatar(
                                        radius: 32,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Apr. 2021",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.keyboard_arrow_down),
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 58,
                                          width: 58,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white.withOpacity(0.2),
                                                      borderRadius: BorderRadius.circular(8)),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.notifications,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                left: 6,
                                                right: 6,
                                                top: 6,
                                                bottom: 6,
                                              ),
                                              Positioned(
                                                  right: 0,
                                                  top: 0,
                                                  child: CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor: lightPurpleColor,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Good morning. Dr. Dream",
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("You have 15 patients today",
                                      style:
                                          TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: ListView.builder(
                            itemCount: _calItems.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: SizedBox(
                                  width: 72,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Center(
                                          child: CircleAvatar(
                                            radius: 32,
                                            backgroundColor: Colors.white.withOpacity(0.2),
                                            foregroundColor: Colors.white,
                                            child: Text(
                                              "${_calItems[index].day}",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: Center(
                                            child: Text(
                                          "${_calItems[index].weekend}",
                                          style: TextStyle(fontSize: 16, color: Colors.white),
                                        )),
                                      ),
                                      Expanded(
                                        child: _calItems[index].isEvent
                                            ? Center(
                                                child: CircleAvatar(
                                                  radius: 4,
                                                  backgroundColor: deepPurpleColor,
                                                ),
                                              )
                                            : Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )),
                    Expanded(
                        flex: 15,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 160,
                                child: Row(
                                  children: [
                                    Expanded(flex: 3,child: Text(
                                        doctorScheduleItems[index].timeIndex ?? "-"
                                    )),
                                    Expanded(flex: 10,child: Container()),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: doctorScheduleItems.length,
                        ))
                  ],
                ),
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(color: deepDarkColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.home),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.card_membership),
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 64,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )),
              Positioned(
                child: Center(
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: deepPurpleColor,
                    child: Icon(Icons.add),
                    foregroundColor: Colors.white,
                  ),
                ),
                bottom: 24,
                left: 0,
                right: 0,
              )
            ],
          ),
        ));
  }
}
