import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: AppColors.neutral6,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pizzon - Crib Ln',
            style: StylesText.headline24.copyWith(
              color: AppColors.neutral1,
              fontWeight: FontWeight.w500,
            ),
          ),
          _distantHeight(4),
          Row(
            children: [
              _buildButton('Fast Food'),
              _distantWidth(2),
              _buildButton('Western cuisine'),
            ],
          ),
          _distantHeight(4),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.access_time,
                  size: 14,
                ),
                Text(
                  '18 mins',
                  style: StylesText.caption.copyWith(
                    color: AppColors.neutral1,
                  ),
                ),
                Icon(
                  Icons.circle,
                  size: 6,
                ),
                Text(
                  '3 km',
                  style: StylesText.caption.copyWith(
                    color: AppColors.neutral1,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffFFD65A),
                  size: 16,
                ),
                Text(
                  '5.0',
                  style: StylesText.caption.copyWith(
                    color: AppColors.neutral1,
                  ),
                ),
                Text(
                  '(200+ rated)',
                  style: StylesText.caption.copyWith(
                    fontWeight: FontWeight.normal,
                    color: AppColors.neutral3,
                  ),
                ),
              ],
            ),
          ),
          _distantHeight(2),
          Divider(
            color: Color(0xffEAEDF2),
          ),
          _distantHeight(2),
          Row(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/1.0x/discount.png',
                  width: 20,
                  height: 20,
                ),
              ),
              _distantWidth(1),
              Text(
                'Discount 40% pizza',
                style:
                    StylesText.bodyText14.copyWith(color: AppColors.neutral1),
              )
            ],
          ),
        ],
      ),
    );
  }

  _buildButton(String text) {
    return Container(
      height: 25,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.background,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: StylesText.caption.copyWith(fontWeight: FontWeight.bold),
        ),
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
