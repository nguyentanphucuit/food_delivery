import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class DeliverTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 16, left: 24, right: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Delivery to',
                style: StylesText.headline20,
              ),
              Text(
                'Change',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                ),
              ),
            ],
          ),
          _distantHeight(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset('assets/images/1.0x/deliveryTo.png'),
              Container(
                width: 227,
                height: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cullingworth Mills Yard, North Bridge, Halifax',
                      style: StylesText.bodyText15,
                    ),
                    Text(
                      '+ Floor / Unit number',
                      style: StylesText.bodyText15.copyWith(
                        color: AppColors.neutral3,
                      ),
                    ),
                    Text(
                      '+ Note',
                      style: StylesText.bodyText15.copyWith(
                        color: AppColors.neutral3,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          _distantHeight(6),
          Divider(
            height: 0,
          ),
          _distantHeight(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.access_time),
              Text(
                'Deliver at - 10:00 AM',
                style: StylesText.bodyText15,
              ),
              SizedBox(width: 40),
              Text(
                'Change',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                ),
              ),
            ],
          ),
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
