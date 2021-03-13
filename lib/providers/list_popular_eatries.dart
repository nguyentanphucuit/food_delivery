import 'package:flutter/material.dart';
import 'package:food_delivery/providers/popular_eatries.dart';

class ListPopularEatries with ChangeNotifier {
  List<PopularEatries> _listPopularEatries = [
    PopularEatries(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      image: 'image',
    ),
    PopularEatries(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      image: 'image1',
    ),
    PopularEatries(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      image: 'image2',
    ),
  ];

  List<PopularEatries> get popularEatries {
    return [..._listPopularEatries];
  }

  void addPopularEatries(PopularEatries popularEatries) {
    final newPopularEatries = PopularEatries(
      title: popularEatries.title,
      sub: popularEatries.sub,
      time: popularEatries.time,
      distant: popularEatries.distant,
      rating: popularEatries.rating,
      image: popularEatries.image,
    );
    _listPopularEatries.add(newPopularEatries);
    notifyListeners();
  }

  void removePopularEatries() {
    _listPopularEatries.clear();
    notifyListeners();
  }
}
