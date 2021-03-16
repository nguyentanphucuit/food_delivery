import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  _payment(Image image, String name) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      color: AppColors.neutral6,
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              image,
              _distantWidth(3),
              Text(
                name,
                style: StylesText.bodyText15.copyWith(
                  color: AppColors.neutral1,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.primaryOrangeRed,
            size: 14,
          ),
        ],
      ),
    );
  }

  _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        backgroundColor: AppColors.neutral6,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Icon(Icons.arrow_back_ios, size: 20, color: AppColors.neutral1),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Payment Methods',
            style: StylesText.headline20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Container(
          height: 12,
          color: AppColors.background,
        ),
        _payment(Image.asset('assets/images/icons/1.0x/47.png'), 'e-Wallet'),
        Divider(height: 0),
        _payment(
            Image.asset('assets/images/icons/1.0x/Frame 2.png'), 'Credit Card'),
        Divider(height: 0),
        _payment(Image.asset('assets/images/icons/1.0x/gift.png'), 'Gift Card'),
      ],
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
