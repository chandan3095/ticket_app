import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class AppTextInput extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppTextInput({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyles.planeColor,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppStyles.headLine3,
          )
        ],
      ),
    );
  }
}
