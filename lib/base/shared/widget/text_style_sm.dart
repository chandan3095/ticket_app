import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class TextStyleSm extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleSm(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headLine4.copyWith(
        color: AppStyles.whiteColor,
      ),
    );
  }
}
