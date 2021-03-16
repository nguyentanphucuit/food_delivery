import 'package:flutter/material.dart';
import 'package:food_delivery/providers/meal_promotion.dart';

class ListMealPromotion with ChangeNotifier {
  List<MealPromotion> _listMealPromotion = [
    MealPromotion(
      title: 'Steakieazy - Canterbury',
      address: '31 Canterbury Road, Valley Field',
      time: '15 mins',
      distant: '4 km',
      rating: '5.0',
      discount: '20',
      image: 'assets/images/1.0x/steakieazy.png',
    ),
    MealPromotion(
      title: 'Savagan - Mounthoolie',
      address: '74  Mounthoolie Lane, Sundridge',
      time: '20 mins',
      distant: '6 km',
      rating: '5.0',
      discount: '20',
      image: 'assets/images/1.0x/savagan.png',
    ),
    MealPromotion(
      title: 'Steakieazy - Canterbury',
      address: '31 Canterbury Road, Valley Field',
      time: '15 mins',
      distant: '4 km',
      rating: '5.0',
      discount: '20',
      image: 'assets/images/1.0x/steakieazy.png',
    ),
  ];

  List<MealPromotion> get mealPromotion {
    return [..._listMealPromotion];
  }

  void addMealPromotion(MealPromotion mealPromotion) {
    final newMealPromotion = MealPromotion(
      title: mealPromotion.title,
      address: mealPromotion.address,
      time: mealPromotion.time,
      distant: mealPromotion.distant,
      rating: mealPromotion.rating,
      discount: mealPromotion.discount,
      image: mealPromotion.image,
    );
    _listMealPromotion.add(newMealPromotion);
    notifyListeners();
  }

  void removeMealPromotion() {
    _listMealPromotion.clear();
    notifyListeners();
  }
}
