import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_fast_food.dart';
import 'package:food_delivery/widgets/component/browsing_card.dart';
import 'package:provider/provider.dart';

class FastFoodBrowsing extends StatelessWidget {
  final bool isDiscount;
  FastFoodBrowsing({@required this.isDiscount});
  @override
  Widget build(BuildContext context) {
    final _listFastFood = Provider.of<ListFastFood>(context).fastFood;
    return Container(
      height: 250,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: _listFastFood.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final _fastFood = _listFastFood[index];
          return BrowsingCard(
            isDiscount: false,
            title: _fastFood.title,
            address: _fastFood.address,
            time: _fastFood.time,
            distant: _fastFood.distant,
            rating: _fastFood.rating,
            discount: _fastFood.discount,
            image: _fastFood.image,
          );
        },
      ),
    );
  }
}
