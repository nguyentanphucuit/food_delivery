import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_drink.dart';
import 'package:food_delivery/providers/list_fast_food.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class Drinks extends StatelessWidget {
  final bool isRateOrder;
  final bool isColorPrimary;
  Drinks({@required this.isRateOrder, @required this.isColorPrimary});
  @override
  Widget build(BuildContext context) {
    final _listDrink = Provider.of<ListDrink>(context).drink;
    return Container(
      height: isRateOrder ? 165 : 110,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listDrink.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _drink = _listDrink[index];

          return FoodCard(
            isOngoing: false,
            onlyMoney: false,
            isRateReOrder: isRateOrder,
            isColorPrimary: isColorPrimary,
            isTwice: false,
            isTimeSpaceRating: true,
            title: _drink.title,
            sub: _drink.sub,
            time: _drink.time,
            distant: _drink.distant,
            rating: _drink.rating,
            price: _drink.price,
            discount: _drink.discount,
            timeRemain: _drink.timeRemain,
            image: _drink.image,
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
