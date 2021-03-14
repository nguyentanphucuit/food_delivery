import 'package:flutter/material.dart';
import 'package:food_delivery/providers/drink.dart';
import 'package:food_delivery/providers/popular_eatries.dart';

class ListDrink with ChangeNotifier {
  List<Drink> _listDrink = [
    Drink(
      title: 'Creamos - Chapel Ln',
      sub: '1x Brown Tornado',
      time: '10 mins',
      distant: '1.1 km',
      rating: '5.0',
      price: '5.00',
      timeRemain: '5:00',
      discount: '3.00',
      image: 'assets/images/1.0x/creamos_square.png',
    ),
    Drink(
      title: 'Creamos - Chapel Ln',
      sub: '1x Brown Tornado',
      time: '10 mins',
      distant: '1.1 km',
      rating: '5.0',
      price: '5.00',
      timeRemain: '5:00',
      discount: '3.00',
      image: 'assets/images/1.0x/creamos_square.png',
    ),
  ];
  List<Drink> get drink {
    return [..._listDrink];
  }

  void addDrink(Drink drink) {
    final newDrink = Drink(
      title: drink.title,
      sub: drink.sub,
      time: drink.time,
      distant: drink.distant,
      rating: drink.rating,
      price: drink.price,
      timeRemain: drink.timeRemain,
      discount: drink.discount,
      image: drink.image,
    );
    _listDrink.add(newDrink);
    notifyListeners();
  }

  void removeDrink() {
    _listDrink.clear();
    notifyListeners();
  }
}
