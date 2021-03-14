import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _sizeImage = 56.0;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: StylesText.headline20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          _distantHeight(4),
          Container(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        width: _sizeImage,
                        height: _sizeImage,
                        decoration: BoxDecoration(
                          color: AppColors.neutral5,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Image.asset(
                          'assets/images/1.0x/discount.png',
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Promos',
                        style: StylesText.bodyText14.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          _distantHeight(8),
        ],
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