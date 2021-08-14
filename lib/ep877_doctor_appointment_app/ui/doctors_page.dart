import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep877_doctor_appointment_app/model/doctor.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  _DoctorsPageState createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.teal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            color: Colors.white,
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(Icons.arrow_back_ios)),
                        Text(
                          "DOCTORS",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.info_outline),
                          color: Colors.white,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 64,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(36)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: TextField(
                            controller: _textEditingController,
                            decoration:
                                InputDecoration(hintText: "Search", icon: Icon(Icons.search), border: InputBorder.none),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: doctorItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Doctor nearby".toUpperCase()),
                              Text("See all".toUpperCase()),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundImage: NetworkImage(doctorItems[index].profileImg ?? ""),
                              ),
                              Column(
                                children: [
                                  Text(doctorItems[index].name ?? "Dreamwalker"),
                                  Text(doctorItems[index].subtitle ?? "Dreamwalker"),
                                  Row(
                                    children: [
                                      CircleAvatar(),
                                      Text("${doctorItems[index].year} years"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              flex: 12,
            ),
          ],
        ),
      ),
    );
  }
}
