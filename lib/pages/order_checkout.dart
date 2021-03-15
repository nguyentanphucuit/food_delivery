import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/order_checkout/contact.dart';
import 'package:food_delivery/widgets/order_checkout/deliver_to.dart';
import 'package:food_delivery/widgets/order_checkout/order_summary.dart';
import 'package:food_delivery/widgets/order_checkout/payment_method.dart';
import 'package:food_delivery/widgets/order_checkout/total.dart';

class OrderCheckout extends StatelessWidget {
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
      preferredSize: Size.fromHeight(66.0),
      child: AppBar(
        backgroundColor: AppColors.neutral6,
        elevation: 1.0,
        leading:
            Icon(Icons.arrow_back_ios, size: 20, color: AppColors.neutral1),
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Text(
                'Pizzon - Crib Ln',
                style: StylesText.headline20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '1.1km - 15 mins',
                style:
                    StylesText.bodyText15.copyWith(color: AppColors.neutral3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            DeliverTo(),
            _buildSpace(),
            Contact(),
            _buildSpace(),
            OrderSummary(),
            _buildSpace(),
            PaymentMethod(),
            _buildSpace(),
            Total(),
          ],
        ),
      ),
    );
  }

  _buildSpace() {
    return Container(
      color: AppColors.background,
      height: 5,
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
