import 'package:flutter/material.dart';

class NewProduct {
  final String title;
  final String kCal;
  final String price;
  final String discount;
  final String rating;
  final String image;

  NewProduct({
    @required this.title,
    @required this.kCal,
    @required this.price,
    @required this.discount,
    @required this.rating,
    @required this.image,
  });
}
