import 'package:flutter/material.dart';
import 'package:food_delivery/providers/fast_food.dart';
import 'package:food_delivery/providers/popular_eatries.dart';

class ListFastFood with ChangeNotifier {
  List<FastFood> _listFastFood = [
    FastFood(
      title: 'Pizzon - Crib Ln',
      sub: '1x Shrimp Pizza',
      time: '15 mins',
      distant: '1.1 km',
      rating: '5.0',
      price: '16.00',
      discount: '14.00',
      timeRemain: '14:59',
      image: 'assets/images/1.0x/pizza_square.png',
    ),
    FastFood(
      title: 'Lorem Burger',
      sub: '1x Black Peper',
      time: '15 mins',
      distant: '1.1 km',
      rating: '5.0',
      price: '18.00',
      discount: '16.00',
      timeRemain: '03:22',
      image: 'assets/images/1.0x/burger_square.png',
    ),
  ];

  List<FastFood> get fastFood {
    return [..._listFastFood];
  }

  void addFastFood(FastFood fastFood) {
    final newFastFood = FastFood(
      title: fastFood.title,
      sub: fastFood.sub,
      time: fastFood.time,
      distant: fastFood.distant,
      rating: fastFood.rating,
      price: fastFood.price,
      discount: fastFood.discount,
      timeRemain: fastFood.timeRemain,
      image: fastFood.image,
    );
    _listFastFood.add(newFastFood);
    notifyListeners();
  }

  void removeFastFood() {
    _listFastFood.clear();
    notifyListeners();
  }
}
