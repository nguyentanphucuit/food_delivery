import 'package:flutter/material.dart';

class SpecialDelivery {
  final String title;
  final String sub;
  final String kCal;
  final String price;
  final String discount;
  final bool isTwice;
  final String image;

  SpecialDelivery({
    @required this.title,
    @required this.sub,
    @required this.kCal,
    @required this.price,
    @required this.discount,
    @required this.isTwice,
    @required this.image,
  });
}
