import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order summary',
                style: StylesText.headline20,
              ),
              Text(
                'Add more',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                ),
              ),
            ],
          ),
          _distantHeight(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('x1', style: StylesText.bodyText15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shripm Pizza', style: StylesText.bodyText15),
                  _distantHeight(1),
                  Text(
                    '+Potato, +Ketchup',
                    style: StylesText.caption.copyWith(
                      color: AppColors.neutral3,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80,
              ),
              Text('\$ 15.00', style: StylesText.bodyText15),
            ],
          ),
          _distantHeight(4),
          Divider(
            height: 0,
          ),
          _distantHeight(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: StylesText.headline16,
              ),
              Text(
                '\$ 15.00',
                style: StylesText.headline16,
              ),
            ],
          ),
          _distantHeight(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping fee',
                style: StylesText.bodyText15,
              ),
              Text(
                '\$ 1.00',
                style: StylesText.bodyText15,
              ),
            ],
          )
        ],
      ),
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
