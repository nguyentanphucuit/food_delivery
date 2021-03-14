import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/home_main/saved/drinks_browsing.dart';
import 'package:food_delivery/widgets/home_main/saved/fast_foods_browsing.dart';

class Saved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        backgroundColor: AppColors.neutral6,
        appBar: _buildAppBar(context),
        body: _buildBody(context),
      ),
    );
  }

  _buildBody(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(24),
          child: Row(
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
        ),
        Container(
            padding: EdgeInsets.only(left: 24),
            child: Text('Fast Food', style: StylesText.headline20)),
        _distantHeight(4),
        FastFoodBrowsing(isDiscount: false),
        _distantHeight(8),
        Container(
            padding: EdgeInsets.only(left: 24),
            child: Text('Drink', style: StylesText.headline20)),
        _distantHeight(2),
        DrinksBrowsing(isDiscount: false),
      ],
    );
  }

  _buildAppBar(context) {
    return AppBar(
      backgroundColor: AppColors.neutral6,
      title: Text(
        'Saved',
        style: StylesText.headline20.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
