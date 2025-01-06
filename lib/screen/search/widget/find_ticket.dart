import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class FindTicket extends StatelessWidget {
  final String buttonText;
  const FindTicket({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(AppStyles.headLine3),
          backgroundColor: WidgetStatePropertyAll(Color(0xD91130CE)),
          foregroundColor: WidgetStatePropertyAll(Colors.white)),
      child: Text(buttonText),
    );
  }
}
