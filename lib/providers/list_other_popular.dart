import 'package:flutter/material.dart';
import 'package:food_delivery/providers/other_popular.dart';

class ListOtherPopular with ChangeNotifier {
  List<OtherPopular> _listOtherPopular = [
    OtherPopular(
      title: 'title',
      sub: 'sub',
      time: 'time',
      distant: 'distant',
      rating: 'rating',
      image: 'image',
    ),
    OtherPopular(
      title: 'title1',
      sub: 'sub1',
      time: 'time1',
      distant: 'distant1',
      rating: 'rating1',
      image: 'image1',
    ),
    OtherPopular(
      title: 'title2',
      sub: 'sub2',
      time: 'time2',
      distant: 'distant2',
      rating: 'rating2',
      image: 'image2',
    ),
  ];

  List<OtherPopular> get otherPopular {
    return [..._listOtherPopular];
  }

  void addOtherPopular(OtherPopular otherPopular) {
    final newOtherPopular = OtherPopular(
      title: otherPopular.title,
      sub: otherPopular.sub,
      time: otherPopular.time,
      distant: otherPopular.distant,
      rating: otherPopular.rating,
      image: otherPopular.image,
    );
    _listOtherPopular.add(newOtherPopular);
    notifyListeners();
  }

  void removeOtherPopular() {
    _listOtherPopular.clear();
    notifyListeners();
  }
}
