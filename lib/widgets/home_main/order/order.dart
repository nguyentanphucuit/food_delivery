import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_fast_food.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/circle_tab_indicator.dart';
import 'package:food_delivery/widgets/drinks.dart';
import 'package:food_delivery/widgets/fast_foods.dart';
import 'package:food_delivery/widgets/home_main/order/order_bag.dart';
import 'package:food_delivery/widgets/home_main/order/order_history.dart';
import 'package:food_delivery/widgets/home_main/order/order_ongoing.dart';
import 'package:food_delivery/widgets/home_main/order/order_upcoming.dart';

class Order extends StatelessWidget {
  bool _wasButtonClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          backgroundColor: AppColors.neutral6,
          appBar: _buildAppBar(context),
          body: _buildBody(context),
        ),
      ),
    );
  }

  _buildBody(context) {
    return TabBarView(
      children: [
        OrderOngoing(),
        OrderUpcoming(),
        OrderHistory(),
        OrderBag(),
      ],
    );
  }

  _buildAppBar(context) {
    return AppBar(
      backgroundColor: AppColors.neutral6,
      elevation: 1.0,
      bottom: PreferredSize(
        child: TabBar(
          labelColor: AppColors.neutral1,
          labelStyle:
              StylesText.bodyText15.copyWith(fontWeight: FontWeight.w600),
          indicator:
              CircleTabIndicator(color: AppColors.primaryOrangeRed, radius: 3),
          unselectedLabelColor: AppColors.neutral1.withOpacity(0.3),
          isScrollable: true,
          tabs: [
            Tab(child: Text('Ongoing')),
            Tab(child: Text('Upcoming')),
            Tab(child: Text('History')),
            Tab(child: Text('Bag'))
          ],
        ),
        preferredSize: Size.fromHeight(0.0),
      ),
    );
  }
}
