import 'package:flutter/material.dart';
import 'package:food_delivery/providers/new_product.dart';

class ListNewProduct with ChangeNotifier {
  List<NewProduct> _listNewProduct = [
    NewProduct(
      title: 'title',
      kCal: 'kCal',
      price: 'price',
      discount: 'discount',
      rating: 'rating',
      image: 'image',
    ),
    NewProduct(
      title: 'title1',
      kCal: 'kCal1',
      price: 'price1',
      discount: 'discount1',
      rating: 'rating1',
      image: 'image1',
    ),
    NewProduct(
      title: 'title2',
      kCal: 'kCal2',
      price: 'price2',
      discount: 'discount2',
      rating: 'rating2',
      image: 'image2',
    ),
  ];

  List<NewProduct> get newProduct {
    return [..._listNewProduct];
  }
}
