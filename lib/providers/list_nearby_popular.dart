import 'package:flutter/material.dart';
import 'package:food_delivery/providers/nearby_popular.dart';

class ListNearbyPopular with ChangeNotifier {
  List<NearbyPopular> _listNearbyPopular = [
    NearbyPopular(
      title: 'Steakieazy - Canterbury',
      sub: '31 Canterbury Road, Valley Field',
      time: '15 mins',
      distant: '4 km',
      rating: '5.0',
      image: 'assets/images/1.0x/steak_ipsum.png',
    ),
    NearbyPopular(
      title: 'Savagan - Mounthoolie',
      sub: '74  Mounthoolie Lane, Sundridge',
      time: '20 mins',
      distant: '6 km',
      rating: '5.0',
      image: 'assets/images/1.0x/chicken_world.png',
    ),
    NearbyPopular(
      title: 'Steakieazy - Canterbury',
      sub: '31 Canterbury Road, Valley Field',
      time: '15 mins',
      distant: '4 km',
      rating: '5.0',
      image: 'assets/images/1.0x/steak_ipsum.png',
    ),
  ];

  List<NearbyPopular> get nearbyPopular {
    return [..._listNearbyPopular];
  }

  void addNearbyPopular(NearbyPopular nearbyPopular) {
    final newNearbyPopular = NearbyPopular(
      title: nearbyPopular.title,
      sub: nearbyPopular.sub,
      time: nearbyPopular.time,
      distant: nearbyPopular.distant,
      rating: nearbyPopular.rating,
      image: nearbyPopular.image,
    );
    _listNearbyPopular.add(newNearbyPopular);
    notifyListeners();
  }

  void removeNearbyPopular() {
    _listNearbyPopular.clear();
    notifyListeners();
  }
}
