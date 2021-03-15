import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_nearby.dart';
import 'package:food_delivery/providers/list_popular_eatries.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/home_card.dart';
import 'package:provider/provider.dart';

class Nearby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _nearby = Provider.of<ListNearby>(context).nearby;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearby',
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
        _distantHeight(4),
        HomeCard(list: _nearby),
        _distantHeight(8),
      ],
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
