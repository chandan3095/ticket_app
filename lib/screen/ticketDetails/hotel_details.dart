import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/all_json_data.dart';
import 'package:ticket_app/base/shared/styles/app_styles.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args['index'];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/${hotelList[index]['image']}",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          hotelList[index]['place'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )))
              ],
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English.'),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'More Images',
                style: AppStyles.headLine2,
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(8),
                        child:
                            Image.network("https://placehold.co/200x200.png"));
                  }),
            )
          ]))
        ],
      ),
    );
  }
}
