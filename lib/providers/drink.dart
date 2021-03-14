import 'package:flutter/material.dart';

class Drink {
  final String title;
  final String sub;
  final String time;
  final String distant;
  final String rating;
  final String price;
  final String discount;
  final String timeRemain;
  final String image;

  Drink({
    @required this.title,
    @required this.sub,
    @required this.time,
    @required this.distant,
    @required this.rating,
    @required this.price,
    @required this.discount,
    @required this.timeRemain,
    @required this.image,
  });
}
