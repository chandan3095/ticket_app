import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class TextStyleSm extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const TextStyleSm(
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
          ? AppStyles.headLine4.copyWith(
              color: AppStyles.whiteColor,
            )
          : AppStyles.headLine4,
    );
  }
}
