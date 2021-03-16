import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_meal_promotion.dart';
import 'package:food_delivery/providers/list_nearby.dart';
import 'package:food_delivery/providers/list_new_product.dart';
import 'package:food_delivery/providers/list_other_meal.dart';
import 'package:food_delivery/providers/list_other_popular.dart';
import 'package:food_delivery/widgets/component/browsing_card.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class OtherMeals extends StatelessWidget {
  final bool isDiscount;
  OtherMeals({@required this.isDiscount});
  @override
  Widget build(BuildContext context) {
    final _listOtherMeal =
        Provider.of<ListOtherMeal>(context).otherMeal;
    return Container(
      height: 250,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listOtherMeal.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _listOrtherMeal = _listOtherMeal[index];
          return BrowsingCard(
            isDiscount: isDiscount,
            time: _listOrtherMeal.time,
            distant: _listOrtherMeal.distant,
            rating: _listOrtherMeal.rating,
            title: _listOrtherMeal.title,
            address: _listOrtherMeal.sub,
            discount: '',
            image: _listOrtherMeal.image,
          );
        },
      ),
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
