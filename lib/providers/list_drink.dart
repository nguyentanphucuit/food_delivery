import 'package:flutter/material.dart';
import 'package:food_delivery/providers/drink.dart';
import 'package:food_delivery/providers/popular_eatries.dart';

class ListDrink with ChangeNotifier {
  List<Drink> _listDrink = [
    Drink(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      price: 'price',
      image: 'image',
    ),
    Drink(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      price: 'price1',
      image: 'image1',
    ),
    Drink(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      price: 'price2',
      image: 'image2',
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
