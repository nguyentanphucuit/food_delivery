import 'package:flutter/material.dart';
import 'package:food_delivery/providers/popular_promotion.dart';

class ListPopularPromotion with ChangeNotifier {
  List<PopularPromotion> _listPopularPromotion = [
    PopularPromotion(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      discount: 'discount',
      image: 'image',
    ),
    PopularPromotion(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      discount: 'discount1',
      image: 'image1',
    ),
    PopularPromotion(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      discount: 'discount2',
      image: 'image2',
    ),
  ];

  List<PopularPromotion> get popularPromotion {
    return [..._listPopularPromotion];
  }
  void addPopularPromotion(PopularPromotion popularPromotion) {
    final newPopularPromotion = PopularPromotion(
      title: popularPromotion.title,
      sub: popularPromotion.sub,
      time: popularPromotion.time,
      distant: popularPromotion.distant,
      rating: popularPromotion.rating,
      discount: popularPromotion.discount,
      image: popularPromotion.image,
    );
    _listPopularPromotion.add(newPopularPromotion);
    notifyListeners();
  }

  void removePopularPromotion() {
    _listPopularPromotion.clear();
    notifyListeners();
  }
}
