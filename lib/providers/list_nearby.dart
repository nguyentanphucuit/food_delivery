import 'package:flutter/material.dart';
import 'package:food_delivery/providers/nearby.dart';

class ListNearby with ChangeNotifier {
  List<Nearby> _listNearby = [
    Nearby(
      title: 'Lorem Burger - North',
      sub: 'North Bridge, Halifax',
      time: '15 mins',
      distant: '1.1 km',
      rating: '15 mins',
      image: 'assets/images/1.0x/burger.png',
    ),
    Nearby(
      title: 'Steak Ipsum - North Bridge',
      sub: 'North Bridge, Halifax',
      time: '15 mins',
      distant: '1.1 km',
      rating: '15 mins',
      image: 'assets/images/1.0x/steak.png',
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
