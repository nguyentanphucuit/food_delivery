import 'package:flutter/material.dart';
import 'package:food_delivery/themes/text_styles.dart';

class TimeSpaceRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/icons/1.0x/mdi_access_time.png',
          width: 14,
          height: 14,
        ),
        _distantWidth(2),
        Text(
          '15 mins',
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
          '3 km',
          style: StylesText.caption.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        _distantWidth(4),
        Row(
          children: [
            Image.asset(
              'assets/images/icons/1.0x/Star.png',
              width: 14,
              height: 14,
            ),
            _distantWidth(2),
            Text(
              '5.0',
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
