import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/component/browsing_card.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:food_delivery/widgets/component/home_card.dart';
import 'package:food_delivery/widgets/component/voucher.dart';

class Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text('Component'),
    );
  }

  _buildBody() {
    return Column(
      children: [
        HomeCard(),
        BrowsingCard(
          isDiscount: true,
        ),
        FoodCard(
          onlyMoney: false,
          isColorPrimary: false,
          isRateReOrder: false,
          isTwice: false,
          isOngoing: false,
          isTimeSpaceRating: true,
        ),
        SizedBox(height: 20),
        Voucher(),
      ],
    );
  }
}
