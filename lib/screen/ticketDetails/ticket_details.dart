import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/all_json_data.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';
import 'package:ticket_app/base/shared/widget/ticket_view.dart';
import 'package:ticket_app/screen/search/widget/nav_tab_widget.dart';

class TicketDetailsPage extends StatelessWidget {
  const TicketDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 55,
          ),
          Text(
            'Tickets',
            style: AppStyles.headLine1.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          NavTabWidget(
            firstTab: 'Upcoming',
            secondTab: 'Previous',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          )
        ],
      ),
    );
  }
}
