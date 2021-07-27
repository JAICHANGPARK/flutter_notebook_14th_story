import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'medic_card_widget.dart';

class MedicCareHomePage extends StatefulWidget {
  MedicCareHomePage({Key? key}) : super(key: key);

  @override
  _MedicCareHomePageState createState() => _MedicCareHomePageState();
}

class _MedicCareHomePageState extends State<MedicCareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 28,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Good Morning."),
                              Text("Dreamwalker", style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("July 07", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                                ),),
                                IconButton(onPressed: (){}, icon: Icon(Icons.calendar_today_outlined))
                              ],
                            ),
                            DatePicker(
                              DateTime.now(),
                              selectionColor: Colors.blue,
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.wb_sunny_outlined),
                                color: Colors.orangeAccent,),
                                Text("Morning"),
                                Expanded(
                                  child: SizedBox(
                                    child: const Divider(
                                      indent: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            MedicCardWidget(),
                            MedicCardWidget(),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.wb_twighlight),
                                  color: Colors.red,),
                                Text("Afternoon"),
                                Expanded(
                                  child: SizedBox(
                                    child: const Divider(
                                      indent: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.nights_stay_outlined),
                                  color: Colors.indigo,),
                                Text("Evening"),
                                Expanded(
                                  child: SizedBox(
                                    child: const Divider(
                                      indent: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    flex: 15,
                  ),
                ],
              ),
              flex: 18,
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      child: PhysicalModel(
                        color: Colors.black.withOpacity(0.2),
                        elevation: 2,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              )),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.home),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Home")
                                ],
                              )),
                              Expanded(
                                  child: Center(
                                child: Icon(Icons.settings_outlined),
                              )),
                            ],
                          ),
                        ),
                      ),
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 16,
                    ),
                    Positioned(
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add),
                      ),
                      left: 0,
                      right: 0,
                      top: 0,
                    )
                  ],
                ),
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
