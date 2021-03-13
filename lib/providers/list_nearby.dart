import 'package:flutter/material.dart';
import 'package:food_delivery/providers/nearby.dart';

class ListNearby with ChangeNotifier {
  List<Nearby> _listNearby = [
    Nearby(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      image: 'image',
    ),
    Nearby(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      image: 'image1',
    ),
    Nearby(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      image: 'image2',
    ),
  ];

  List<Nearby> get nearby {
    return [..._listNearby];
  }

  void addNearby(Nearby nearby) {
    final newNearby = Nearby(
      title: nearby.title,
      sub: nearby.sub,
      time: nearby.time,
      distant: nearby.distant,
      rating: nearby.rating,
      image: nearby.image,
    );
    _listNearby.add(newNearby);
    notifyListeners();
  }

  void removeNearby() {
    _listNearby.clear();
    notifyListeners();
  }
}
