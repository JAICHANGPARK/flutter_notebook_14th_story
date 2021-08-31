import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep896_flight_booking_app/model/flight_ticket.dart';

class FlightTicketPage extends StatefulWidget {
  const FlightTicketPage({Key? key}) : super(key: key);

  @override
  _FlightTicketPageState createState() => _FlightTicketPageState();
}

class _FlightTicketPageState extends State<FlightTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 200,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(36),
                  topLeft: Radius.circular(36),
                ),
              ),
            ),
          ),
          Positioned(
              top: 48,
              left: 16,
              right: 16,
              bottom: 48,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Itneraries",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.settings),
                        color: Colors.white,
                      )
                    ],
                  ),
                  Container(
                    height: 58,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(fontSize: 24),
                            icon: Icon(Icons.search),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: ticketItems.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            FlightTicket _ticket = ticketItems[index];
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _ticket.title ?? "UNKNOWN",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            _ticket.fromDate ?? "UNKNOWN",
                                            style: TextStyle(color: Colors.grey, fontSize: 12),
                                          ),
                                          Text(
                                            _ticket.arriveDate ?? "UNKNOWN",
                                            style: TextStyle(color: Colors.grey, fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 48,
                                      width: double.infinity,
                                      child: Container(
                                        color: Colors.blue,
                                        child: Row(
                                          children: [
                                            Text(
                                              _ticket.origin ?? "UNKNOWN",
                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Expanded(
                                                  child: Stack(
                                                children: [
                                                  Positioned(
                                                      child: CircleAvatar(
                                                    radius: 4,
                                                    backgroundColor: Colors.black,
                                                  )),
                                                ],
                                              )),
                                            ),
                                            Text(
                                              _ticket.origin ?? "UNKNOWN",
                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }))
                ],
              )),
          Positioned(
              left: 8,
              right: 8,
              bottom: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home_outlined),
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.list_alt_outlined),
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.location_on_outlined),
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outline),
                    color: Colors.grey,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
