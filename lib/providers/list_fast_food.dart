import 'package:flutter/material.dart';
import 'package:food_delivery/providers/fast_food.dart';
import 'package:food_delivery/providers/popular_eatries.dart';

class ListFastFood with ChangeNotifier {
  List<FastFood> _listFastFood = [
    FastFood(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      timeRemain: 'timeRemain',
      image: 'image',
    ),
    FastFood(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      timeRemain: 'timeRemain1',
      image: 'image1',
    ),
    FastFood(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      timeRemain: 'timeRemain2',
      image: 'image2',
    )
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
