import 'package:flutter/material.dart';
import 'package:food_delivery/providers/hot_deals.dart';
import 'package:food_delivery/providers/traditional.dart';

class ListTraditional with ChangeNotifier {
  List<Traditional> _listTraditional = [
    Traditional(
      title: 'Shrimp Pizza',
      sub: 'Shrimp, mushroom, cheese, tomatoa',
      kCal: '475',
      price: '12.00',
      discount: '20.00',
      isTwice: false,
      image: 'assets/images/1.0x/shrimp_pizza.png',
    ),
    Traditional(
      title: 'Pinnacle Pizza',
      sub: 'Luna’s howl, hush, delirium, revoker',
      kCal: '500',
      price: '99.00',
      discount: '165.00',
      isTwice: true,
      image: 'assets/images/1.0x/pinnacle_pizza.png',
    ),
    Traditional(
      title: 'House Stoke Pizza',
      sub: 'Pig, pog, pet, pird',
      kCal: '493',
      price: '15.00',
      discount: '25.00',
      isTwice: false,
      image: 'assets/images/1.0x/hourse_stoke_pizza.png',
    ),
    Traditional(
      title: 'Vegan Pizza',
      sub: 'Fake beef, soy, cheese, mushroom',
      kCal: '120',
      price: '20.00',
      discount: '33.00',
      isTwice: false,
      image: 'assets/images/1.0x/vegan_pizza.png',
    ),
  ];

  List<Traditional> get traditional {
    return [..._listTraditional];
  }

  void addTraditional(Traditional traditional) {
    final newTraditional = Traditional(
      title: traditional.title,
      sub: traditional.sub,
      kCal: traditional.kCal,
      price: traditional.price,
      discount: traditional.discount,
      isTwice: traditional.isTwice,
      image: traditional.image,
    );
    _listTraditional.add(newTraditional);
    notifyListeners();
  }

  void removeTraditional() {
    _listTraditional.clear();
    notifyListeners();
  }
}
