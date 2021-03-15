import 'package:flutter/material.dart';
import 'package:food_delivery/providers/special_delivery.dart';

class ListSpecialDelivery with ChangeNotifier {
  List<SpecialDelivery> _listSpecialDelivery = [
    SpecialDelivery(
      title: 'Shrimp Pizza',
      kCal: '475',
      price: '12.00',
      discount: '20.00',
      sub: 'Shrimp, mushroom, cheese, tomatoa',
      image: 'assets/images/1.0x/shrimp_pizza.png',
    ),
    SpecialDelivery(
      title: 'Pinnacle Pizza',
      kCal: '500',
      price: '99.00',
      discount: '165.00',
      sub: 'Luna’s howl, hush, delirium, revoker',
      image: 'assets/images/1.0x/pinnacle_pizza.png',
    ),
    SpecialDelivery(
      title: 'Shrimp Pizza',
      kCal: '475',
      price: '12.00',
      discount: '20.00',
      sub: 'Shrimp, mushroom, cheese, tomatoa',
      image: 'assets/images/1.0x/shrimp_pizza.png',
    ),
  ];

  List<SpecialDelivery> get specialDelivery {
    return [..._listSpecialDelivery];
  }

  void addSpecialDelivery(SpecialDelivery specialDelivery) {
    final newSpecialDelivery = SpecialDelivery(
      title: specialDelivery.title,
      sub: specialDelivery.sub,
      kCal: specialDelivery.kCal,
      price: specialDelivery.price,
      discount: specialDelivery.discount,
      image: specialDelivery.image,
    );
    _listSpecialDelivery.add(newSpecialDelivery);
    notifyListeners();
  }

  void removeSpecialDelivery() {
    _listSpecialDelivery.clear();
    notifyListeners();
  }
}
