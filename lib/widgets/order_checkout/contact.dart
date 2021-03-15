import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class Contact extends StatelessWidget {
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
                'Contact',
                style: StylesText.headline20,
              ),
              Text(
                'Edit',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                ),
              ),
            ],
          ),
          _distantHeight(2),
          Text(
            'Ocoho, (424) 545-1818',
            style: StylesText.bodyText15.copyWith(
              color: AppColors.neutral2,
            ),
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
