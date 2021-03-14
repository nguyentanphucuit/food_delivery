import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_popular_eatries.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/home_card.dart';
import 'package:provider/provider.dart';

class PopularEatries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _popular_eatries =
        Provider.of<ListPopularEatries>(context).popularEatries;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Eatries',
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
        _distantHeight(2),
        HomeCard(list: _popular_eatries),
        _distantHeight(6),
      ],
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
