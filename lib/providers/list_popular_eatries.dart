import 'package:flutter/material.dart';
import 'package:food_delivery/providers/popular_eatries.dart';

class ListPopularEatries with ChangeNotifier {
  List<PopularEatries> _listPopularEatries = [
    PopularEatries(
      title: 'Creamos - Chapel Ln',
      sub: 'Chapel Ln, Harriseahead',
      time: '18 mins',
      distant: '3 km',
      rating: '5.0',
      image: 'assets/images/1.0x/creamos.png',
    ),
    PopularEatries(
      title: 'Pizzon - CribLn',
      sub: 'Crib Ln, Halifax',
      time: '15 mins',
      distant: '1.1 km',
      rating: '5.0',
      image: 'assets/images/1.0x/pizza.png',
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
