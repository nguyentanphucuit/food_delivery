import 'package:flutter/material.dart';
import 'package:food_delivery/providers/other_meal.dart';

class ListOtherMeal with ChangeNotifier {
  List<OtherMeal> _listOtherMeal = [
    OtherMeal(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      image: 'image',
    ),
    OtherMeal(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      image: 'image1',
    ),
    OtherMeal(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      image: 'image2',
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
