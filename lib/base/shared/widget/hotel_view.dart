import 'package:flutter/material.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 300,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 5),
            child: Text(
              hotel['place'],
              style: AppStyles.headLine1.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 5),
            child: Text(
              hotel['destination'],
              style: AppStyles.headLine3.copyWith(color: AppStyles.whiteColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 5),
            child: Text(
              "\$ ${hotel['price']}/night",
              style: AppStyles.headLine1.copyWith(color: AppStyles.kakiColor),
            ),
          ),
        ],
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelGridView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 0.6,
      height: 300,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Container(
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage("assets/images/${hotel['image']}"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              hotel['place'],
              style: AppStyles.headLine3.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  hotel['destination'],
                  style:
                      AppStyles.headLine3.copyWith(color: AppStyles.whiteColor),
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  "\$ ${hotel['price']}/night",
                  style:
                      AppStyles.headLine4.copyWith(color: AppStyles.kakiColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
