import 'package:flutter/material.dart';

class FlightTicketPage extends StatefulWidget {
  const FlightTicketPage({Key? key}) : super(key: key);

  @override
  _FlightTicketPageState createState() => _FlightTicketPageState();
}

class _FlightTicketPageState extends State<FlightTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(36),
                  topLeft: Radius.circular(36),
                ),
              ),
            ),
            bottom: 0,
            left: 0,
            right: 0,
            top: 200,
          ),
          Positioned(
              left: 8,
              right: 8,
              bottom: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.list_alt_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.location_on_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
                ],
              ))
        ],
      ),
    );
  }
}
