import 'package:flutter/material.dart';

Color backgroundColor = Color(0xff27272c);
Color deepDarkColor = Color(0xff17171b);
Color deepPurpleColor = Color(0xff9292e4);
Color lightPurpleColor = Color(0xffb9b9e3);


class CalDate{
  int day;
  String weekend;

  CalDate(this.day, this.weekend);

}

class MedicalHomePage extends StatefulWidget {
  const MedicalHomePage({Key? key}) : super(key: key);

  @override
  _MedicalHomePageState createState() => _MedicalHomePageState();
}

class _MedicalHomePageState extends State<MedicalHomePage> {
  final List<CalDate> _calItems = List.generate(10, (index) => CalDate(DateTime.now().add(Duration(
    days: index,
  )).day, "Tue"));
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
                      flex: 5,
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
                          color: Colors.blue,
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: SizedBox(
                                  width: 72,
                                  child: Container(
                                    color: Colors.red,
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 26,
                                        ),
                                        Text()
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )),
                    Expanded(
                        flex: 12,
                        child: Placeholder(
                          color: Colors.purple,
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
