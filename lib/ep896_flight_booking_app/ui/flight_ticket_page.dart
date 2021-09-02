import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep896_flight_booking_app/model/flight_ticket.dart';
import 'package:get/get.dart';

import 'qr_scan_page.dart';
import 'ticket_seperator.dart';

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
                            bool _isRunning = _ticket.isRunning ?? false;
                            return GestureDetector(
                              onTap: () => Get.to(QrScanPage(flightTicket: ,)),
                              child: Card(
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
                                        padding: const EdgeInsets.symmetric(vertical: 12),
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
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              _ticket.origin ?? "UNKNOWN",
                                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                            ),
                                            Expanded(
                                                child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    right: 0,
                                                    bottom: 0,
                                                    top: 0,
                                                    left: 0,
                                                    child: TicketSeparator(
                                                      height: 2,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  AnimatedPositioned(
                                                      right: 0,
                                                      bottom: 0,
                                                      top: 0,
                                                      left: 0,
                                                      duration: Duration(milliseconds: 150),
                                                      child: RotatedBox(
                                                          quarterTurns: 1,
                                                          child: Icon(
                                                            Icons.flight,
                                                            color: _isRunning ? Colors.purpleAccent : Colors.black,
                                                          ))),
                                                  Positioned(
                                                      left: 0,
                                                      bottom: 0,
                                                      top: 0,
                                                      child: CircleAvatar(
                                                        radius: 4,
                                                        backgroundColor: Colors.black,
                                                      )),
                                                  Positioned(
                                                      right: 0,
                                                      bottom: 0,
                                                      top: 0,
                                                      child: CircleAvatar(
                                                        radius: 4,
                                                        backgroundColor: Colors.purpleAccent,
                                                      )),
                                                ],
                                              ),
                                            )),
                                            Text(
                                              _ticket.origin ?? "UNKNOWN",
                                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            _ticket.fromTime ?? "UNKNOWN",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            _ticket.elapsedTime ?? "UNKNOWN",
                                            style: TextStyle(color: Colors.grey, fontSize: 12),
                                          ),
                                          Text(
                                            _ticket.arriveTime ?? "UNKNOWN",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
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
