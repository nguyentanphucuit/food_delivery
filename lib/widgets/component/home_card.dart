import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/time_space_rating.dart';

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 241,
      height: 200,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 50.0),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  shadowColor: AppColors.neutral6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    width: 241,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/1.0x/promotion2.png',
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _distantHeight(3),
                              Text(
                                'Creamos - Chapel Ln',
                                style: StylesText.headline16,
                              ),
                              _distantHeight(2),
                              Text(
                                'Chapel Ln, Harriseahead',
                                style: StylesText.caption
                                    .copyWith(color: AppColors.neutral3),
                              ),
                              _distantHeight(1),
                              TimeSpaceRating(),
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
