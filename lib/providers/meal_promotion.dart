import 'package:flutter/material.dart';

class MealPromotion {
  final String title;
  final String sub;
  final String time;
  final String distant;
  final String rating;
  final String discount;
  final String image;

  MealPromotion({
    @required this.title,
    @required this.sub,
    @required this.time,
    @required this.distant,
    @required this.rating,
    @required this.discount,
    @required this.image,
  });
}
