import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_drink.dart';
import 'package:food_delivery/providers/list_fast_food.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/browsing_card.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class DrinksBrowsing extends StatelessWidget {
  final bool isDiscount;
  DrinksBrowsing({@required this.isDiscount});
  @override
  Widget build(BuildContext context) {
    final _listDrink = Provider.of<ListDrink>(context).drink;
    return Container(
      height: 130,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listDrink.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _drink = _listDrink[index];
          return BrowsingCard(
            isDiscount: false,
            title: _drink.title,
            address: _drink.address,
            time: _drink.time,
            distant: _drink.distant,
            rating: _drink.rating,
            discount: _drink.discount,
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
