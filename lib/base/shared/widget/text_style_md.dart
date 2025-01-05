import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class TextStyleMd extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleMd(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headLine3.copyWith(color: AppStyles.whiteColor),
    );
  }
}
