import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/voucher.dart';

class VoucherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.neutral6,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        backgroundColor: AppColors.neutral6,
        elevation: 1.0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Icon(Icons.arrow_back_ios, size: 20, color: AppColors.neutral1),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Promo Code Apply',
            style: StylesText.headline20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  _buildBody() {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _promoCode(),
          _buidlSizedBox(6),
          Text(
            'Select your vouchers',
            style: StylesText.headline20,
          ),
          _buidlSizedBox(4),
          Voucher(),
        ],
      ),
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }

  _promoCode() {
    return Row(
      children: [
        Flexible(
          child: Container(
            height: 34,
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff9B9B9B),
                  ),
                ),
                hintText: 'Enter Promo Code',
                labelStyle:
                    StylesText.bodyText15.copyWith(color: Color(0xff9B9B9B)),
                labelText: 'Enter Promo Code',
              ),
            ),
          ),
        ),
        Container(
          height: 34,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(6.0),
                bottomRight: Radius.circular(6.0),
              )),
              primary: AppColors.neutral5, // background
            ),
            child: Text(
              'APPLY',
              style: StylesText.bodyText15.copyWith(
                color: AppColors.neutral6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
