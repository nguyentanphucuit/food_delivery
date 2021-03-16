import 'package:flutter/material.dart';

class MealPromotion {
  final String title;
  final String address;
  final String time;
  final String distant;
  final String rating;
  final String discount;
  final String image;

  MealPromotion({
    @required this.title,
    @required this.address,
    @required this.time,
    @required this.distant,
    @required this.rating,
    @required this.discount,
    @required this.image,
  });
}
