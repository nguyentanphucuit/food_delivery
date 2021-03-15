import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_traditional.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class Traditionals extends StatelessWidget {
  final bool isRateOrder;
  final bool isColorPrimary;
  Traditionals({
    @required this.isRateOrder,
    @required this.isColorPrimary,
  });
  @override
  Widget build(BuildContext context) {
    final _listTradition = Provider.of<ListTraditional>(context).traditional;
    return Container(
      height: isRateOrder ? 165 : 110,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listTradition.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _traditional = _listTradition[index];
          return FoodCard(
            isOngoing: false,
            onlyMoney: !isRateOrder,
            isRateReOrder: isRateOrder,
            isColorPrimary: isColorPrimary,
            isTwice: _traditional.isTwice,
            isTimeSpaceRating: isRateOrder,
            title: _traditional.title,
            sub: _traditional.sub,
            price: _traditional.price,
            discount: _traditional.discount,
            image: _traditional.image,
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

