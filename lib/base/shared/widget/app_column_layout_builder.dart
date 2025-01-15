import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/widget/text_style_sm.dart';
import 'package:ticket_app/base/shared/widget/text_style_md.dart';

class AppColumnLayoutBuilder extends StatelessWidget {
  final String text600;
  final String text500;
  final CrossAxisAlignment textAlign;
  final bool? isColor;
  const AppColumnLayoutBuilder(
      {super.key,
      required this.text500,
      required this.text600,
      this.textAlign = CrossAxisAlignment.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: textAlign,
      children: [
        TextStyleMd(
          text: text600,
          isColor: isColor,
        ),
        SizedBox(
          height: 5,
        ),
        TextStyleSm(
          text: text500,
          isColor: isColor,
        ),
      ],
    );
  }
}
