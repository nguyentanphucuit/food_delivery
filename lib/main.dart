import 'package:flutter/material.dart';
import 'package:food_delivery/pages/food_categories.dart';
import 'package:food_delivery/pages/home_main.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/order_checkout.dart';
import 'package:food_delivery/pages/popular_eatries_page.dart';
import 'package:food_delivery/pages/restaurant.dart';
import 'package:food_delivery/pages/restaurant_info.dart';
import 'package:food_delivery/pages/restaurant_menu.dart';
import 'package:food_delivery/pages/voucher_page.dart';
import 'package:food_delivery/providers/list_drink.dart';
import 'package:food_delivery/providers/list_fast_food.dart';
import 'package:food_delivery/providers/list_hot_deals.dart';
import 'package:food_delivery/providers/list_meal_promotion.dart';
import 'package:food_delivery/providers/list_nearby.dart';
import 'package:food_delivery/providers/list_nearby_popular.dart';
import 'package:food_delivery/providers/list_new_product.dart';
import 'package:food_delivery/providers/list_other_meal.dart';
import 'package:food_delivery/providers/list_other_popular.dart';
import 'package:food_delivery/providers/list_popular_cuisines.dart';
import 'package:food_delivery/providers/list_popular_eatries.dart';
import 'package:food_delivery/providers/list_popular_promotion.dart';
import 'package:food_delivery/providers/list_special_delivery.dart';
import 'package:food_delivery/providers/list_traditional.dart';
import 'package:food_delivery/widgets/component/voucher.dart';
import 'package:food_delivery/widgets/food_option.dart';
import 'package:food_delivery/widgets/home_main/order/order.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: ListDrink(),
        ),
        ChangeNotifierProvider.value(
          value: ListFastFood(),
        ),
        ChangeNotifierProvider.value(
          value: ListHotDeals(),
        ),
        ChangeNotifierProvider.value(
          value: ListTraditional(),
        ),
        ChangeNotifierProvider.value(
          value: ListMealPromotion(),
        ),
        ChangeNotifierProvider.value(
          value: ListNearbyPopular(),
        ),
        ChangeNotifierProvider.value(
          value: ListNearby(),
        ),
        ChangeNotifierProvider.value(
          value: ListNewProduct(),
        ),
        ChangeNotifierProvider.value(
          value: ListOtherMeal(),
        ),
        ChangeNotifierProvider.value(
          value: ListOtherPopular(),
        ),
        ChangeNotifierProvider.value(
          value: ListPopularCuisines(),
        ),
        ChangeNotifierProvider.value(
          value: ListPopularEatries(),
        ),
        ChangeNotifierProvider.value(
          value: ListPopularPromotion(),
        ),
        ChangeNotifierProvider.value(
          value: ListSpecialDelivery(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: PopularEatriesPage(),
      ),
    );
  }
}
