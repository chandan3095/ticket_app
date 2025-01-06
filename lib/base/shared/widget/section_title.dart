import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {super.key,
      required this.title,
      required this.buttonText,
      required this.func});
  final String title;
  final String buttonText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.headLine2,
        ),
        InkWell(
          onTap: func,
          child: Text(
            buttonText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
