import 'package:flutter/material.dart';
import 'package:food_delivery/providers/other_meal.dart';

class ListOtherMeal with ChangeNotifier {
  List<OtherMeal> _listOtherMeal = [
    OtherMeal(
      title: 'Steakieazy - Canterbury',
      sub: '31 Canterbury Road, Valley Field',
      time: '15 mins',
      distant: '4 km',
      rating: '5.0',
      image: 'assets/images/1.0x/steakieazy.png',
    ),
    OtherMeal(
      title: 'Savagan - Mounthoolie',
      sub: '74  Mounthoolie Lane, Sundridge',
      time: '20 mins',
      distant: '6 km',
      rating: '5.0',
      image: 'assets/images/1.0x/savagan.png',
    ),
    OtherMeal(
      title: 'Steakieazy - Canterbury',
      sub: '31 Canterbury Road, Valley Field',
      time: '15 mins',
      distant: '4 km',
      rating: '5.0',
      image: 'assets/images/1.0x/steakieazy.png',
    ),
  ];

  List<OtherMeal> get otherMeal {
    return [..._listOtherMeal];
  }

  void addOtherMeal(OtherMeal otherMeal) {
    final newOtherMeal = OtherMeal(
      title: otherMeal.title,
      sub: otherMeal.sub,
      time: otherMeal.time,
      distant: otherMeal.distant,
      rating: otherMeal.rating,
      image: otherMeal.image,
    );
    _listOtherMeal.add(newOtherMeal);
    notifyListeners();
  }

  void removeOtherMeal() {
    _listOtherMeal.clear();
    notifyListeners();
  }
}
