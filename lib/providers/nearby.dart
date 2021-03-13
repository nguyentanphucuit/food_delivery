import 'package:flutter/material.dart';

class Nearby {
  final String title;
  final String sub;
  final String time;
  final String distant;
  final String rating;
  final String image;

  Nearby({
    @required this.title,
    @required this.sub,
    @required this.time,
    @required this.distant,
    @required this.rating,
    @required this.image,
  });
}
