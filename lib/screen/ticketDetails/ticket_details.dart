import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/all_json_data.dart';
import 'package:ticket_app/base/shared/media.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';
import 'package:ticket_app/base/shared/widget/app_column_layout_builder.dart';
import 'package:ticket_app/base/shared/widget/app_layout_builder_widget.dart';
import 'package:ticket_app/base/shared/widget/ticket_view.dart';
import 'package:ticket_app/screen/search/widget/nav_tab_widget.dart';

class TicketDetailsPage extends StatefulWidget {
  const TicketDetailsPage({super.key});

  @override
  State<TicketDetailsPage> createState() => _TicketDetailsPageState();
}

class _TicketDetailsPageState extends State<TicketDetailsPage> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    var route = ModalRoute.of(context);
    if (route != null && route.settings.arguments != null) {
      var args = route.settings.arguments as Map<dynamic, dynamic>;
      ticketIndex = args['index'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text('Tickets'),
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              // SizedBox(
              //   height: 55,
              // ),
              // Text(
              //   'Tickets',
              //   style: AppStyles.headLine1.copyWith(fontSize: 35),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
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
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppLayoutBuilderWidget(
                  randomNumber: 15,
                  width: 5,
                  isColor: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16),
                child: Container(
                  color: AppStyles.ticketColor,
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayoutBuilder(
                        text600: 'Flutter DB',
                        text500: 'Passenger',
                        isColor: true,
                        textAlign: CrossAxisAlignment.start,
                      ),
                      AppColumnLayoutBuilder(
                        text600: '5221 364869',
                        text500: 'Passport',
                        isColor: true,
                        textAlign: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppLayoutBuilderWidget(
                  randomNumber: 15,
                  width: 5,
                  isColor: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16),
                child: Container(
                  color: AppStyles.ticketColor,
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayoutBuilder(
                        text600: '364738 28174478',
                        text500: 'Number of E-Ticket',
                        isColor: true,
                        textAlign: CrossAxisAlignment.start,
                      ),
                      AppColumnLayoutBuilder(
                        text600: 'B2SG28',
                        text500: 'Booking Code',
                        isColor: true,
                        textAlign: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppLayoutBuilderWidget(
                  randomNumber: 15,
                  width: 5,
                  isColor: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16),
                child: Container(
                  color: AppStyles.ticketColor,
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppMedia.visaCard,
                                scale: 11,
                              ),
                              Text(
                                '*** 2464',
                                style: AppStyles.headLine3,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Payment Method',
                            style: AppStyles.headLine4,
                          )
                        ],
                      ),
                      AppColumnLayoutBuilder(
                        text600: "\$249.99",
                        text500: 'Price',
                        isColor: true,
                        textAlign: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21))),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: 'https://chandan3095.github.io/chandan3095/',
                      barcode: Barcode.code128(),
                      height: 70,
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
