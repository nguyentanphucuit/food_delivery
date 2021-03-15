import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_new_product.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class NewProducts extends StatelessWidget {
  final bool isRateOrder;
  final bool isColorPrimary;
  NewProducts({@required this.isRateOrder, @required this.isColorPrimary});
  @override
  Widget build(BuildContext context) {
    final _listnewProduct = Provider.of<ListNewProduct>(context).newProduct;
    return Container(
      height: isRateOrder ? 165 : 110,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listnewProduct.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _newProduct = _listnewProduct[index];
          return FoodCard(
            isOngoing: false,
            onlyMoney: !isRateOrder,
            isRateReOrder: isRateOrder,
            isColorPrimary: isColorPrimary,
            isTwice: false,
            isTimeSpaceRating: isRateOrder,
            title: _newProduct.title,
            sub: _newProduct.sub,
            price: _newProduct.price,
            discount: _newProduct.discount,
            image: _newProduct.image,
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
