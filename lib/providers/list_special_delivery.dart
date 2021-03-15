import 'package:flutter/material.dart';
import 'package:food_delivery/providers/special_delivery.dart';

class ListSpecialDelivery with ChangeNotifier {
  List<SpecialDelivery> _listSpecialDelivery = [
    SpecialDelivery(
      title: 'Shrimp Pizza',
      sub: 'Shrimp, mushroom, cheese, tomatoa',
      kCal: '475',
      price: '12.00',
      discount: '20.00',
      isTwice: false,
      image: 'assets/images/1.0x/shrimp_pizza.png',
    ),
    SpecialDelivery(
      title: 'Pinnacle Pizza',
      sub: 'Luna’s howl, hush, delirium, revoker',
      kCal: '500',
      price: '99.00',
      discount: '165.00',
      isTwice: true,
      image: 'assets/images/1.0x/pinnacle_pizza.png',
    ),
    SpecialDelivery(
      title: 'House Stoke Pizza',
      sub: 'Pig, pog, pet, pird',
      kCal: '493',
      price: '15.00',
      discount: '25.00',
      isTwice: false,
      image: 'assets/images/1.0x/hourse_stoke_pizza.png',
    ),
    SpecialDelivery(
      title: 'Vegan Pizza',
      sub: 'Fake beef, soy, cheese, mushroom',
      kCal: '120',
      price: '20.00',
      discount: '33.00',
      isTwice: false,
      image: 'assets/images/1.0x/vegan_pizza.png',
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
      isTwice: specialDelivery.isTwice,
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
