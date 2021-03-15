import 'package:flutter/material.dart';
import 'package:food_delivery/providers/new_product.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/header_restaurant.dart';
import 'package:food_delivery/widgets/new_products.dart';
import 'package:food_delivery/widgets/special_deliveries.dart';

class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.neutral6,
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Container(
          width: 375,
          height: 242,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Image.asset('assets/images/1.0x/restaurant.png'),
              Positioned(
                top: 170,
                right: 0,
                child: Header(),
              ),
              _iconInfo(),
              _buildTabBar(),
            ],
          ),
        ),
        _buildListRestaurant(
          NewProducts(isRateOrder: false, isColorPrimary: true),
          'New Product - Autumn',
          true,
        ),
        _buildListRestaurant(
          SpecialDeliveries(isRateOrder: false, isColorPrimary: true),
          'Special Delivery',
          false,
        ),
      ],
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }

  _iconInfo() {
    return Positioned(
      top: 158,
      left: 327,
      child: Container(
        width: 28,
        height: 28,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.neutral6,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 2,
                color: AppColors.neutral6,
              )),
          child: Icon(
            Icons.info_outlined,
            // color: AppColors.neutral6,
          ),
        ),
      ),
    );
  }

  _iconTabBar(IconData icons) {
    return Container(
      width: 28,
      height: 28,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          icons,
          color: AppColors.neutral6,
          size: 20,
        ),
      ),
    );
  }

  _buildTabBar() {
    return Positioned(
      top: 54,
      left: 24,
      child: Container(
        width: 325,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconTabBar(Icons.arrow_back_ios_outlined),
            _iconTabBar(Icons.favorite_border_rounded),
          ],
        ),
      ),
    );
  }

  _buildListRestaurant(Widget widget, String name, bool isNewProduct) {
    return Container(
      padding: isNewProduct
          ? EdgeInsets.only(
              top: 120,
            )
          : EdgeInsets.only(
              top: 8,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 5,
            color: AppColors.background,
          ),
          Container(
            padding: EdgeInsets.only(top: 24, left: 24),
            child: Text(
              name,
              style: StylesText.headline20.copyWith(
                color: AppColors.neutral2,
              ),
            ),
          ),
          Container(
            height: isNewProduct ? 212 : 120,
            child: widget,
          ),
        ],
      ),
    );
  }
}
