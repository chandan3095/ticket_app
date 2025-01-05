import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomNumber;
  final double width;
  const AppLayoutBuilderWidget(
      {super.key, required this.randomNumber, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrants) {
      print((constrants.constrainWidth() / randomNumber).floor());
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            (constrants.constrainWidth() / randomNumber).floor(),
            (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: AppStyles.whiteColor)),
                )),
      );
    });
  }
}
