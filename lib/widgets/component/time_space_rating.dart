import 'package:flutter/material.dart';
import 'package:food_delivery/themes/text_styles.dart';

class TimeSpaceRating extends StatelessWidget {
  final time;
  final distant;
  final rating;
  TimeSpaceRating({
    @required this.time,
    @required this.distant,
    @required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final _sizeImage = 14.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/icons/1.0x/mdi_access_time.png',
          width: _sizeImage,
          height: _sizeImage,
        ),
        _distantWidth(2),
        Text(
          time,
          style: StylesText.caption.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        _distantWidth(2),
        Icon(
          Icons.circle,
          size: 6,
        ),
        _distantWidth(2),
        Text(
          distant,
          style: StylesText.caption.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        _distantWidth(4),
        Row(
          children: [
            Image.asset(
              'assets/images/icons/1.0x/Star.png',
              width: _sizeImage,
              height: _sizeImage,
            ),
            _distantWidth(2),
            Text(
              rating,
              style: StylesText.caption.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }

  _distantWidth(int scales) {
    return SizedBox(
      width: scales * 4.0,
    );
  }
}
