import 'package:flutter/material.dart';
import 'package:food_delivery/providers/new_product.dart';

class ListNewProduct with ChangeNotifier {
  List<NewProduct> _listNewProduct = [
    NewProduct(
      title: 'Shrimp Pizza',
      kCal: '475',
      price: '12.00',
      discount: '20.00',
      sub: 'Shrimp, mushroom, cheese, tomatoa',
      image: 'assets/images/1.0x/shrimp_pizza.png',
    ),
    NewProduct(
      title: 'Pinnacle Pizza',
      kCal: '500',
      price: '99.00',
      discount: '165.00',
      sub: 'Luna’s howl, hush, delirium, revoker',
      image: 'assets/images/1.0x/pinnacle_pizza.png',
    ),
    NewProduct(
      title: 'Shrimp Pizza',
      kCal: '475',
      price: '12.00',
      discount: '20.00',
      sub: 'Shrimp, mushroom, cheese, tomatoa',
      image: 'assets/images/1.0x/shrimp_pizza.png',
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
