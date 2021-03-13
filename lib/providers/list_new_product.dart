import 'package:flutter/material.dart';
import 'package:food_delivery/providers/new_product.dart';

class ListNewProduct with ChangeNotifier {
  List<NewProduct> _listNewProduct = [
    NewProduct(
      title: 'title',
      kCal: 'kCal',
      price: 'price',
      discount: 'discount',
      sub: 'sub',
      image: 'image',
    ),
    NewProduct(
      title: 'title1',
      kCal: 'kCal1',
      price: 'price1',
      discount: 'discount1',
      sub: 'sub1',
      image: 'image1',
    ),
    NewProduct(
      title: 'title2',
      kCal: 'kCal2',
      price: 'price2',
      discount: 'discount2',
      sub: 'sub2',
      image: 'image2',
    ),
  ];

  List<NewProduct> get newProduct {
    return [..._listNewProduct];
  }
  void addNewProduct(NewProduct newProduct) {
    final newNewProduct = NewProduct(
      title: newProduct.title,
      sub: newProduct.sub,
      kCal: newProduct.kCal,
      price: newProduct.price,
      discount: newProduct.discount,
      image: newProduct.image,
    );
    _listNewProduct.add(newNewProduct);
    notifyListeners();
  }

  void removeNewProduct() {
    _listNewProduct.clear();
    notifyListeners();
  }
}
