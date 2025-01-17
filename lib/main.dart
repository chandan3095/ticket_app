import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/widget/bottom_nav_bar.dart';
import 'package:ticket_app/screen/all_tickets.dart';
import 'package:ticket_app/screen/ticketDetails/all_hotels.dart';
import 'package:ticket_app/screen/ticketDetails/ticket_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => BottomNavigation(),
        "/all_tickets": (context) => AllTickets(),
        "/ticket_screen": (context) => TicketDetailsPage(),
        "/all_hotels": (context) => AllHotels(),
      },
    );
  }
}
