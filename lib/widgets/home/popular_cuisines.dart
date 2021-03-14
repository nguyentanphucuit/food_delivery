import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_popular_cuisines.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:provider/provider.dart';

class PopularCuisines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _popular_cuisines =
        Provider.of<ListPopularCuisines>(context).popularCuisines;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Cuisines',
                style: StylesText.headline20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View all',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
        ),
        _buidlSizedBox(4),
        Container(
          // width: 241,
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 5,
                      shadowColor: AppColors.neutral6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Image.asset(
                        _popular_cuisines[index].image,
                      ),
                    ),
                    _buidlSizedBox(2),
                    Text(
                      _popular_cuisines[index].title,
                      style: StylesText.bodyText14.copyWith(
                        color: AppColors.neutral1,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
