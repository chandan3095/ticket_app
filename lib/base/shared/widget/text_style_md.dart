import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class TextStyleMd extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const TextStyleMd(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyles.headLine3.copyWith(color: AppStyles.whiteColor)
          : AppStyles.headLine3,
    );
  }
}
