import 'package:flutter/material.dart';
import 'package:food_delivery/providers/hot_deals.dart';

class ListHotDeals with ChangeNotifier {
  List<HotDeals> _listHotDeals = [
    HotDeals(
      title: 'Shrimp Pizza',
      sub: 'Shrimp, mushroom, cheese, tomatoa',
      kCal: '475',
      price: '12.00',
      discount: '20.00',
      isTwice: false,
      image: 'assets/images/1.0x/shrimp_pizza.png',
    ),
    HotDeals(
      title: 'Pinnacle Pizza',
      sub: 'Luna’s howl, hush, delirium, revoker',
      kCal: '500',
      price: '99.00',
      discount: '165.00',
      isTwice: true,
      image: 'assets/images/1.0x/pinnacle_pizza.png',
    ),
    HotDeals(
      title: 'House Stoke Pizza',
      sub: 'Pig, pog, pet, pird',
      kCal: '493',
      price: '15.00',
      discount: '25.00',
      isTwice: false,
      image: 'assets/images/1.0x/hourse_stoke_pizza.png',
    ),
    HotDeals(
      title: 'Vegan Pizza',
      sub: 'Fake beef, soy, cheese, mushroom',
      kCal: '120',
      price: '20.00',
      discount: '33.00',
      isTwice: false,
      image: 'assets/images/1.0x/vegan_pizza.png',
    ),
  ];

  List<HotDeals> get hotDeals {
    return [..._listHotDeals];
  }

  void addHotDeals(HotDeals hotDeals) {
    final newHotDeals = HotDeals(
      title: hotDeals.title,
      sub: hotDeals.sub,
      kCal: hotDeals.kCal,
      price: hotDeals.price,
      discount: hotDeals.discount,
      isTwice: hotDeals.isTwice,
      image: hotDeals.image,
    );
    _listHotDeals.add(newHotDeals);
    notifyListeners();
  }

  void removeHotDeals() {
    _listHotDeals.clear();
    notifyListeners();
  }
}
