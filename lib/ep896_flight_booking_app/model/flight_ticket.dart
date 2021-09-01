class FlightTicket {
  String? title;
  String? fromDate;
  String? fromTime;
  String? arriveDate;
  String? arriveTime;
  String? origin;
  String? destination;
  String? elapsedTime;
  bool? isRunning;

  FlightTicket(
      {this.title,
      this.fromDate,
      this.fromTime,
      this.arriveDate,
      this.arriveTime,
      this.origin,
      this.destination,
      this.elapsedTime,
      this.isRunning});
}

List<FlightTicket> ticketItems = [
  FlightTicket(
      title: "VACATION IN EGYPT",
      fromDate: "AUG 20",
      fromTime: "06:35 AM",
      arriveDate: "AUG 20",
      arriveTime: "12:35 PM",
      elapsedTime: "04h 00m",
      destination: "ARN",
      origin: "ARN",
      isRunning: false),
  FlightTicket(
      title: "VACATION IN PARIS",
      fromDate: "AUG 22",
      fromTime: "06:35 AM",
      arriveDate: "AUG 28",
      arriveTime: "12:35 PM",
      elapsedTime: "12h 10m",
      destination: "COG",
      origin: "IFK",
      isRunning: false),
  FlightTicket(
    title: "BIZ TRIP TO NEW YORK",
      fromDate: "AUG 22",
      fromTime: "06:35 AM",
      arriveDate: "AUG 28",
      arriveTime: "12:35 PM",
      elapsedTime: "12h 10m",
      origin: "GOT",
      destination: "CGN",
      isRunning: true
  ),
  FlightTicket(
    title: "VACATION IN BERLIN",
  )
];
