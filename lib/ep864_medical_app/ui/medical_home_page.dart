import 'package:flutter/material.dart';

Color backgroundColor = Color(0xff27272c);
Color deepDarkColor = Color(0xff17171b);
Color deepPurpleColor = Color(0xff9292e4);
Color lightPurpleColor = Color(0xffb9b9e3);

class MedicalHomePage extends StatefulWidget {
  const MedicalHomePage({Key? key}) : super(key: key);

  @override
  _MedicalHomePageState createState() => _MedicalHomePageState();
}

class _MedicalHomePageState extends State<MedicalHomePage> {
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
                            child: Row(
                              children: [
                                Expanded(
                                  child: Placeholder(),
                                ),
                                Expanded(
                                  child: Placeholder(),
                                ),
                                Expanded(
                                  child: Placeholder(),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
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
                                    style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.normal)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: Placeholder(
                          color: Colors.purple,
                        )),
                    Expanded(
                        flex: 10,
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
