import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/all_json_data.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';
import 'package:ticket_app/base/shared/widget/hotel_view.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text('All Hotels'),
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.9),
              itemCount: hotelList.length,
              itemBuilder: (context, index) {
                var singleHotel = hotelList[index];
                return HotelGridView(hotel: singleHotel, index: index);
              }),
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final int index;
  final Map<String, dynamic> hotel;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        print('$index tapped');
        Navigator.pushNamed(context, "/hotel_details",
            arguments: {"index": index});
      },
      child: Container(
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
                    style: AppStyles.headLine3
                        .copyWith(color: AppStyles.whiteColor),
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    "\$ ${hotel['price']}/night",
                    style: AppStyles.headLine4
                        .copyWith(color: AppStyles.kakiColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
