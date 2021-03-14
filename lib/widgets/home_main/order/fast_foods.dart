import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_fast_food.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class FastFoods extends StatelessWidget {
  final bool isRateOrder;
  final bool isTimeRemain;
  final bool isColorPrimary;
  FastFoods({
    @required this.isRateOrder,
    @required this.isTimeRemain,
    @required this.isColorPrimary,
  });
  @override
  Widget build(BuildContext context) {
    final _listFastFood = Provider.of<ListFastFood>(context).fastFood;
    return Container(
      height: isRateOrder ? 330 : 220,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listFastFood.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _fastFood = _listFastFood[index];
          return FoodCard(
            isOngoing: isTimeRemain,
            onlyMoney: false,
            isRateReOrder: isRateOrder,
            isColorPrimary: isColorPrimary,
            isTwice: false,
            isTimeSpaceRating: !isTimeRemain,
            title: _fastFood.title,
            sub: _fastFood.sub,
            time: _fastFood.time,
            distant: _fastFood.distant,
            rating: _fastFood.rating,
            price: _fastFood.price,
            discount: _fastFood.discount,
            timeRemain: _fastFood.timeRemain,
            image: _fastFood.image,
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
