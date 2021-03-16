import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_meal_promotion.dart';
import 'package:food_delivery/providers/list_nearby.dart';
import 'package:food_delivery/providers/list_new_product.dart';
import 'package:food_delivery/widgets/component/browsing_card.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class Nearbies extends StatelessWidget {
  final bool isDiscount;
  Nearbies({@required this.isDiscount});
  @override
  Widget build(BuildContext context) {
    final _listNearby = Provider.of<ListNearby>(context).nearby;
    return Container(
      height: 250,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listNearby.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _nearby = _listNearby[index];
          return BrowsingCard(
            isDiscount: isDiscount,
            time: _nearby.time,
            distant: _nearby.distant,
            rating: _nearby.rating,
            title: _nearby.title,
            address: _nearby.sub,
            discount: '',
            image: _nearby.image,
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
