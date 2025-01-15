import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';
import 'package:ticket_app/base/shared/widget/app_column_layout_builder.dart';
import 'package:ticket_app/base/shared/widget/app_layout_builder_widget.dart';
import 'package:ticket_app/base/shared/widget/big_circle.dart';
import 'package:ticket_app/base/shared/widget/big_dot.dart';
import 'package:ticket_app/base/shared/widget/text_style_md.dart';
import 'package:ticket_app/base/shared/widget/text_style_sm.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isNotRight;
  final bool? isColor;
  const TicketView(
      {super.key, required this.ticket, this.isNotRight = false, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 220,
      child: Container(
        margin: EdgeInsets.only(right: isNotRight == true ? 0 : 16),
        child: Column(
          children: [
            //ticket first container
            Container(
              padding: EdgeInsets.all(21),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleMd(
                        text: ticket['from']['code'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomNumber: 6,
                                isColor: isColor,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? AppStyles.whiteColor
                                      : AppStyles.planeSecondColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleMd(
                        text: ticket['to']['code'],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleSm(
                            text: ticket['from']['name'],
                            isColor: isColor,
                          )),
                      Expanded(child: Container()),
                      TextStyleSm(
                        text: ticket['flying_time'],
                        align: TextAlign.center,
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleSm(
                          text: ticket['to']['name'],
                          align: TextAlign.end,
                          isColor: isColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //ticket middle container
            Container(
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketColor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomNumber: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            //ticket last container
            Container(
              padding: EdgeInsets.all(21),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketOrange
                      : AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayoutBuilder(
                    text600: ticket['date'],
                    text500: 'Date',
                    isColor: isColor,
                  ),
                  AppColumnLayoutBuilder(
                    text600: ticket['departure_time'],
                    text500: 'Departure Time',
                    textAlign: CrossAxisAlignment.center,
                    isColor: isColor,
                  ),
                  AppColumnLayoutBuilder(
                    text600: ticket['number'].toString(),
                    text500: 'Number',
                    textAlign: CrossAxisAlignment.end,
                    isColor: isColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
