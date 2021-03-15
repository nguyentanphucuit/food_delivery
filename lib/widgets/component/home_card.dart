import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_popular_eatries.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/time_space_rating.dart';
import 'package:food_delivery/widgets/home_main/home/home.dart';
import 'package:provider/provider.dart';

class HomeCard extends StatelessWidget {
  final List list;
  const HomeCard({@required this.list});

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = 188.0;

    return Container(
      height: _height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          final _data = list[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 2,
                  shadowColor: AppColors.neutral6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    width: _width * 0.65,
                    child: Column(
                      children: [
                        Image.asset(
                          list[index].image,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _distantHeight(3),
                              Text(
                                _data.title,
                                style: StylesText.headline16,
                              ),
                              _distantHeight(2),
                              Text(
                                _data.sub,
                                style: StylesText.caption
                                    .copyWith(color: AppColors.neutral3),
                              ),
                              _distantHeight(1),
                              TimeSpaceRating(
                                time: _data.time,
                                distant: _data.distant,
                                rating: _data.rating,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }

  _distantWidth(int scales) {
    return SizedBox(
      width: scales * 4.0,
    );
  }
}
