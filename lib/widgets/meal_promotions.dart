import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_meal_promotion.dart';
import 'package:food_delivery/providers/list_new_product.dart';
import 'package:food_delivery/widgets/component/browsing_card.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class MealPromotions extends StatelessWidget {
  final bool isDiscount;
  MealPromotions({@required this.isDiscount});
  @override
  Widget build(BuildContext context) {
    final _listMealPromotion =
        Provider.of<ListMealPromotion>(context).mealPromotion;
    return Container(
      height: 250,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listMealPromotion.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _mealPromotion = _listMealPromotion[index];
          return BrowsingCard(
            isDiscount: isDiscount,
            time: _mealPromotion.time,
            distant: _mealPromotion.distant,
            rating: _mealPromotion.rating,
            title: _mealPromotion.title,
            address: _mealPromotion.address,
            discount: _mealPromotion.discount,
            image: _mealPromotion.image,
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
