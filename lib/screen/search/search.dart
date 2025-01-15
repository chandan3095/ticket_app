import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/media.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';
import 'package:ticket_app/base/shared/widget/section_title.dart';
import 'package:ticket_app/screen/search/widget/app_text_input.dart';
import 'package:ticket_app/screen/search/widget/find_ticket.dart';
import 'package:ticket_app/screen/search/widget/nav_tab_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: 55,
          ),
          Text(
            'What are\nyou Looking For?',
            style: AppStyles.headLine1.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          NavTabWidget(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          SizedBox(
            height: 25,
          ),
          AppTextInput(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          SizedBox(
            height: 10,
          ),
          AppTextInput(icon: Icons.flight_land_rounded, text: 'Arrival'),
          SizedBox(
            height: 20,
          ),
          FindTicket(
            buttonText: 'Find Ticket',
          ),
          SizedBox(
            height: 20,
          ),
          SectionTitle(
            title: 'Upcoming Flights',
            buttonText: 'View All',
            func: () => Navigator.pushNamed(context, '/all_tickets'),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * 0.42,
                height: 410,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          spreadRadius: 2)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(AppMedia.planeSit),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '20% discount on the early booking of this flight. Do not miss it.',
                      style: AppStyles.headLine2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        width: size.width * 0.44,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(
                          children: [
                            Text(
                              'Discount for Survey',
                              style: AppStyles.headLine2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppStyles.whiteColor),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Take the survey about our services and get discount',
                              style: AppStyles.headLine2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: AppStyles.whiteColor),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -50,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: Color(0xFF189999),
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: size.width * 0.44,
                    height: 200,
                    decoration: BoxDecoration(
                        color: AppStyles.ticketOrange,
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Take Love',
                          style: AppStyles.headLine2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppStyles.whiteColor),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(AppMedia.cityView),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
