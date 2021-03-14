import 'package:flutter/material.dart';
import 'package:food_delivery/providers/popular_cuisines.dart';

class ListPopularCuisines with ChangeNotifier {
  List<PopularCuisines> _listPopularCuisines = [
    PopularCuisines(
      title: 'New Zealander',
      image: 'assets/images/1.0x/NewZealand.png',
    ),
    PopularCuisines(
      title: 'Italian',
      image: 'assets/images/1.0x/Italian.png',
    ),
    PopularCuisines(
      title: 'Greece',
      image: 'assets/images/1.0x/Greece.png',
    ),
  ];

  List<PopularCuisines> get popularCuisines {
    return [..._listPopularCuisines];
  }

  void addPopularCuisines(PopularCuisines popularCuisines) {
    final newPopularCuisines = PopularCuisines(
      title: popularCuisines.title,
      image: popularCuisines.image,
    );
    _listPopularCuisines.add(newPopularCuisines);
    notifyListeners();
  }

  void removePopularCuisines() {
    _listPopularCuisines.clear();
    notifyListeners();
  }
}
