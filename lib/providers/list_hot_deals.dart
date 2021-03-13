import 'package:flutter/material.dart';
import 'package:food_delivery/providers/hot_deals.dart';

class ListHotDeals with ChangeNotifier {
  List<HotDeals> _listHotDeals = [
    HotDeals(
      title: 'title',
      kCal: 'kCal',
      sub: 'sub',
      price: 'price',
      discount: 'discount',
      image: 'image',
    ),
    HotDeals(
      title: 'title1',
      kCal: 'kCal1',
      sub: 'sub1',
      price: 'price1',
      discount: 'discount1',
      image: 'image1',
    ),
    HotDeals(
      title: 'title2',
      kCal: 'kCal2',
      sub: 'sub2',
      price: 'price2',
      discount: 'discount2',
      image: 'image2',
    ),
  ];

  List<HotDeals> get hotDeals {
    return [..._listHotDeals];
  }

  void addHotDeals(HotDeals hotDeals) {
    final newHotDeals = HotDeals(
      title: hotDeals.title,
      sub: hotDeals.sub,
      kCal: hotDeals.kCal,
      price: hotDeals.price,
      discount: hotDeals.discount,
      image: hotDeals.image,
    );
    _listHotDeals.add(newHotDeals);
    notifyListeners();
  }

  void removeHotDeals() {
    _listHotDeals.clear();
    notifyListeners();
  }
}
