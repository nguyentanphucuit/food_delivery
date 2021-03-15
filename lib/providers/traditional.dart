import 'package:flutter/material.dart';

class Traditional {
  final String title;
  final String kCal;
  final String sub;
  final String price;
  final String discount;
  final bool isTwice;
  final String image;

  Traditional({
    @required this.title,
    @required this.kCal,
    @required this.sub,
    @required this.price,
    @required this.discount,
    @required this.isTwice,
    @required this.image,
  });
}
