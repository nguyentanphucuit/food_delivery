import 'package:flutter/material.dart';
import 'package:food_delivery/providers/special_delivery.dart';

class ListSpecialDelivery with ChangeNotifier {
  List<SpecialDelivery> _listSpecialDelivery = [
    SpecialDelivery(
      title: 'title',
      kCal: 'kCal',
      price: 'price',
      discount: 'discount',
      sub: 'sub',
      image: 'image',
    ),
    SpecialDelivery(
      title: 'title1',
      kCal: 'kCal1',
      price: 'price1',
      discount: 'discount1',
      sub: 'sub1',
      image: 'image1',
    ),
    SpecialDelivery(
      title: 'title2',
      kCal: 'kCal2',
      price: 'price2',
      discount: 'discount2',
      sub: 'sub2',
      image: 'image2',
    ),
  ];

  List<SpecialDelivery> get specialDelivery {
    return [..._listSpecialDelivery];
  }

  void addSpecialDelivery(SpecialDelivery specialDelivery) {
    final newSpecialDelivery = SpecialDelivery(
      title: specialDelivery.title,
      sub: specialDelivery.sub,
      kCal: specialDelivery.kCal,
      price: specialDelivery.price,
      discount: specialDelivery.discount,
      image: specialDelivery.image,
    );
    _listSpecialDelivery.add(newSpecialDelivery);
    notifyListeners();
  }

  void removeSpecialDelivery() {
    _listSpecialDelivery.clear();
    notifyListeners();
  }
}
