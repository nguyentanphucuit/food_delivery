import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_new_product.dart';
import 'package:food_delivery/providers/list_special_delivery.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class SpecialDeliveries extends StatelessWidget {
  final bool isRateOrder;
  final bool isColorPrimary;
  SpecialDeliveries(
      {@required this.isRateOrder, @required this.isColorPrimary});
  @override
  Widget build(BuildContext context) {
    final _listSpecialDelivery =
        Provider.of<ListSpecialDelivery>(context).specialDelivery;
    return Container(
      height: isRateOrder ? 165 : 110,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listSpecialDelivery.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _specialDelivery = _listSpecialDelivery[index];
          return FoodCard(
            isOngoing: false,
            onlyMoney: !isRateOrder,
            isRateReOrder: isRateOrder,
            isColorPrimary: isColorPrimary,
            isTwice: false,
            isTimeSpaceRating: isRateOrder,
            title: _specialDelivery.title,
            sub: _specialDelivery.sub,
            price: _specialDelivery.price,
            discount: _specialDelivery.discount,
            image: _specialDelivery.image,
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
