import 'package:flutter/material.dart';
import 'package:food_delivery/providers/popular_cuisines.dart';

class ListPopularCuisines with ChangeNotifier {
  List<PopularCuisines> _listPopularCuisines = [
    PopularCuisines(
      title: 'title',
      image: 'image',
    ),
    PopularCuisines(
      title: 'title1',
      image: 'image1',
    ),
    PopularCuisines(
      title: 'title2',
      image: 'image2',
    ),
  ];

  List<PopularCuisines> get popularCuisines {
    return [..._listPopularCuisines];
  }
}
