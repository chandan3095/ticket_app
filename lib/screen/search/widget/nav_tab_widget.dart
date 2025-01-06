import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class NavTabWidget extends StatelessWidget {
  const NavTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyles.whiteColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          AppTab(
            tabText: 'Airline Tickets',
          ),
          AppTab(
            isActive: true,
            tabText: 'Hotels',
            tabBorder: true,
          ),
        ],
      ),
    );
  }
}

class AppTab extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool isActive;
  const AppTab(
      {super.key,
      this.tabBorder = false,
      this.tabText = '',
      this.isActive = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.44,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: tabBorder == false
              ? BorderRadius.horizontal(left: Radius.circular(50))
              : BorderRadius.horizontal(right: Radius.circular(50)),
          color: isActive == false ? Colors.white : Colors.transparent),
      child: Center(
          child: Text(
        tabText,
        style: AppStyles.headLine3.copyWith(fontWeight: FontWeight.w400),
      )),
    );
  }
}
