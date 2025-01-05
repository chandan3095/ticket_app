import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';
import 'package:ticket_app/screen/all_tickets.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {super.key, required this.title, required this.buttonText});
  final String title;
  final String buttonText;

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
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => AllTickets(),
              ),
            );
          },
          child: Text(
            buttonText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
