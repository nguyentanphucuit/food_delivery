import 'package:flutter/material.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/home_main/order/drinks.dart';
import 'package:food_delivery/widgets/home_main/order/fast_foods.dart';

class OrderUpcoming extends StatelessWidget {
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
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
          child: Text(
            'Awaiting for the restaurant to confirm & prepare your order. It won’t take long.',
            style: StylesText.bodyText15,
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 24),
            child: Text('Fast Food', style: StylesText.headline20)),
        FastFoods(
            isRateOrder: false, isTimeRemain: false, isColorPrimary: true),
      ],
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
