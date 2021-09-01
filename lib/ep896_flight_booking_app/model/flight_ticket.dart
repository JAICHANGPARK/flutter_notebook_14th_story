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
    arriveDate: "AUG 20",
    arriveTime: "12:35 PM"
  ),
  FlightTicket(
    title: "VACATION IN PARIS",
  ),
  FlightTicket(
    title: "BIZ TRIP TO NEW YORK",
  ),
  FlightTicket(
    title: "VACATION IN BERLIN",
  )
];
