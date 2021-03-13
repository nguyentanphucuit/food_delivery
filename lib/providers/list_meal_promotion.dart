import 'package:flutter/material.dart';
import 'package:food_delivery/providers/meal_promotion.dart';

class ListMealPromotion with ChangeNotifier {
  List<MealPromotion> _listMealPromotion = [
    MealPromotion(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      discount: 'discount',
      image: 'image',
    ),
    MealPromotion(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      discount: 'discount1',
      image: 'image1',
    ),
    MealPromotion(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      discount: 'discount2',
      image: 'image2',
    ),
  ];

  List<MealPromotion> get mealPromotion {
    return [..._listMealPromotion];
  }
}
