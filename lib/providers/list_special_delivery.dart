import 'package:flutter/material.dart';
import 'package:food_delivery/providers/special_delivery.dart';

class ListSpecialDelivery with ChangeNotifier {
  List<SpecialDelivery> _listSpecialDelivery = [
    SpecialDelivery(
      title: 'title',
      kCal: 'kCal',
      price: 'price',
      discount: 'discount',
      rating: 'rating',
      image: 'image',
    ),
    SpecialDelivery(
      title: 'title1',
      kCal: 'kCal1',
      price: 'price1',
      discount: 'discount1',
      rating: 'rating1',
      image: 'image1',
    ),
    SpecialDelivery(
      title: 'title2',
      kCal: 'kCal2',
      price: 'price2',
      discount: 'discount2',
      rating: 'rating2',
      image: 'image2',
    ),
  ];

  List<SpecialDelivery> get specialDelivery {
    return [..._listSpecialDelivery];
  }
}
