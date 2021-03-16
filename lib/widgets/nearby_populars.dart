import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_meal_promotion.dart';
import 'package:food_delivery/providers/list_nearby.dart';
import 'package:food_delivery/providers/list_nearby_popular.dart';
import 'package:food_delivery/providers/list_new_product.dart';
import 'package:food_delivery/widgets/component/browsing_card.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class NearbyPopulars extends StatelessWidget {
  final bool isDiscount;
  NearbyPopulars({@required this.isDiscount});
  @override
  Widget build(BuildContext context) {
    final _listNearbyPopular =
        Provider.of<ListNearbyPopular>(context).nearbyPopular;
    return Container(
      height: 250,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listNearbyPopular.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _nearbyPopular = _listNearbyPopular[index];
          return BrowsingCard(
            isDiscount: isDiscount,
            time: _nearbyPopular.time,
            distant: _nearbyPopular.distant,
            rating: _nearbyPopular.rating,
            title: _nearbyPopular.title,
            address: _nearbyPopular.sub,
            discount: '',
            image: _nearbyPopular.image,
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
