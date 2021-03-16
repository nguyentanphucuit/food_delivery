import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/home_main/home/categories.dart';
import 'package:food_delivery/widgets/meal_promotions.dart';
import 'package:food_delivery/widgets/nearbies.dart';
import 'package:food_delivery/widgets/other_meal.dart';

class FoodCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.neutral6,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios, size: 24, color: AppColors.neutral1),
          Text(
            'Categories',
            style: StylesText.headline20.copyWith(fontWeight: FontWeight.bold),
          ),
          Icon(null)
        ],
      ),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Categories(),
          ),
          _distantHeight(2),
          Divider(height: 0),
          _distantHeight(8),
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Meal Promotion',
                  style: StylesText.headline20,
                ),
                Text(
                  'View all',
                  style: StylesText.caption.copyWith(
                    color: AppColors.primaryOrangeRed,
                  ),
                ),
              ],
            ),
          ),
          MealPromotions(
            isDiscount: true,
          ),
          _distantHeight(6),
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              'Nearby',
              style: StylesText.headline20,
            ),
          ),
          Nearbies(
            isDiscount: false,
          ),
          _distantHeight(6),
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              'Other Meal',
              style: StylesText.headline20,
            ),
          ),
          OtherMeals(
            isDiscount: false,
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
