import 'package:flutter/material.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/drinks.dart';
import 'package:food_delivery/widgets/fast_foods.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'All',
                    style: StylesText.headline20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),
              _distantHeight(6),
              Text(
                'Clear all',
                style: StylesText.bodyText15
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 24),
            child: Text('Fast Food', style: StylesText.headline20)),
        FastFoods(
            isRateOrder: true, isTimeRemain: false, isColorPrimary: false),
        _distantHeight(4),
        Container(
            padding: EdgeInsets.only(left: 24),
            child: Text('Drink', style: StylesText.headline20)),
        _distantHeight(2),
        Drinks(isRateOrder: true, isColorPrimary: false)
      ],
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
