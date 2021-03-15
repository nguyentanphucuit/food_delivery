// import 'package:flutter/material.dart';
// import 'package:food_delivery/providers/list_hot_deals.dart';
// import 'package:food_delivery/providers/list_new_product.dart';
// import 'package:food_delivery/providers/list_special_delivery.dart';
// import 'package:food_delivery/widgets/component/food_card.dart';
// import 'package:provider/provider.dart';

// class Traditionals extends StatelessWidget {
//   final bool isRateOrder;
//   final bool isColorPrimary;
//   Traditionals({
//     @required this.isRateOrder,
//     @required this.isColorPrimary,
//   });
//   @override
//   Widget build(BuildContext context) {
//     final _listHotDeal = Provider.of<ListHotDeals>(context).hotDeals;
//     return Container(
//       height: isRateOrder ? 165 : 110,
//       child: ListView.builder(
//         padding: EdgeInsets.only(left: 0),
//         itemCount: _listHotDeal.length,
//         scrollDirection: Axis.vertical,
//         itemBuilder: (context, index) {
//           final _hotDeal = _listHotDeal[index];
//           return FoodCard(
//             isOngoing: false,
//             onlyMoney: !isRateOrder,
//             isRateReOrder: isRateOrder,
//             isColorPrimary: isColorPrimary,
//             isTwice: _hotDeal.isTwice,
//             isTimeSpaceRating: isRateOrder,
//             title: _hotDeal.title,
//             sub: _hotDeal.sub,
//             price: _hotDeal.price,
//             discount: _hotDeal.discount,
//             image: _hotDeal.image,
//           );
//         },
//       ),
//     );
//   }

//   _distantHeight(int scales) {
//     return SizedBox(
//       height: scales * 4.0,
//     );
//   }
// }
