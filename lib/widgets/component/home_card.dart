import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 241,
      height: 188,
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
                                style: StylesText.headline16
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              _distantHeight(2),
                              Text(
                                'Chapel Ln, Harriseahead',
                                style: StylesText.caption
                                    .copyWith(color: AppColors.neutral3),
                              ),
                              _distantHeight(1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/icons/1.0x/mdi_access_time.png',
                                    width: 14,
                                    height: 14,
                                  ),
                                  _distantWidth(2),
                                  Text(
                                    '15 mins',
                                    style: StylesText.caption,
                                  ),
                                  _distantWidth(2),
                                  Icon(
                                    Icons.circle,
                                    size: 6,
                                  ),
                                  _distantWidth(2),
                                  Text(
                                    '3 km',
                                    style: StylesText.caption,
                                  ),
                                  _distantWidth(4),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/icons/1.0x/Star.png',
                                        width: 14,
                                        height: 14,
                                      ),
                                      _distantWidth(2),
                                      Text(
                                        '5.0',
                                        style: StylesText.caption,
                                      ),
                                    ],
                                  ),
                                ],
                              )
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
