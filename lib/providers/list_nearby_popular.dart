import 'package:flutter/material.dart';
import 'package:food_delivery/providers/nearby_popular.dart';

class ListNearbyPopular with ChangeNotifier {
  List<NearbyPopular> _listNearbyPopular = [
    NearbyPopular(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      image: 'image',
    ),
    NearbyPopular(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      image: 'image1',
    ),
    NearbyPopular(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      image: 'image2',
    ),
  ];

  List<NearbyPopular> get nearbyPopular {
    return [..._listNearbyPopular];
  }
}
