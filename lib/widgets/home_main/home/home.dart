import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/home_main/home/categories.dart';
import 'package:food_delivery/widgets/home_main/home/nearby.dart';
import 'package:food_delivery/widgets/home_main/home/popular_cuisines.dart';
import 'package:food_delivery/widgets/home_main/home/popular_eatries.dart';
import 'package:food_delivery/widgets/home_main/home/promotion.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _distantHeight(16),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Hello, ',
                  style: StylesText.headline27.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Ocoho!',
                  style: StylesText.headline27.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryOrangeRed,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'North Bridge, Halifax',
                style: StylesText.bodyText15,
              ),
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 17,
                  color: AppColors.primaryOrangeRed,
                ),
                onPressed: () {},
              ),
            ],
          ),
          _distantHeight(2),
          Container(
            padding: EdgeInsets.only(right: 24),
            height: 40,
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    width: 0.2,
                  ),
                ),
                labelStyle: StylesText.bodyText16.copyWith(
                  color: AppColors.neutral3,
                  fontWeight: FontWeight.bold,
                ),
                labelText: 'Search for restaurants, dishes...',
              ),
            ),
          ),
          _distantHeight(6),
          Promotion(),
          _distantHeight(6),
          PopularEatries(),
          Text(
            'Categories',
            style: StylesText.headline20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          _distantHeight(4),
          Categories(),
          _distantHeight(8),
          Nearby(),
          PopularCuisines(),
        ],
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
