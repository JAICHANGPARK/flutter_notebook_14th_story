import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep896_flight_booking_app/ui/flight_ticket_page.dart';
import 'package:get/get.dart';

import 'ui/flight_app_start_page.dart';


class FlightBookingApp extends StatelessWidget {
  const FlightBookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context) =>FlightAppStartPage(),
        "/ticket" : (context) => FlightTicketPage()
      },
    );
  }
}
