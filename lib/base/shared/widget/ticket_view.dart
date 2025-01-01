import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';
import 'package:ticket_app/base/shared/widget/app_layout_builder_widget.dart';
import 'package:ticket_app/base/shared/widget/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(21),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'NYC',
                  style:
                      AppStyles.headLine3.copyWith(color: AppStyles.whiteColor),
                ),
                Expanded(child: Container()),
                BigDot(),
                Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                        child: AppLayoutBuilderWidget(
                      randomNumber: 6,
                    )),
                    Text('Plane')
                  ],
                )),
                BigDot(),
                Expanded(child: Container()),
                Text('LON',
                    style: AppStyles.headLine3
                        .copyWith(color: AppStyles.whiteColor)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
