import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/time_space_rating.dart';

class BrowsingCard extends StatelessWidget {
  final bool isDiscount;
  final time;
  final distant;
  final rating;

  const BrowsingCard({
    @required this.isDiscount,
    @required this.time,
    @required this.distant,
    @required this.rating,
  });
  @override
  Widget build(BuildContext context) {
    final _sizeImage = 74.0;
    final _paddingTop = 16.0;
    final _paddingRight = 24.0;
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              // color: Colors.red,
              margin: EdgeInsets.only(
                  left: _paddingRight, top: _paddingTop, bottom: 0, right: 24),
              padding: EdgeInsets.only(
                  left: 16, right: 16, top: _paddingTop, bottom: 16),
              // height: _sizeImage,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/1.0x/shrimp.png',
                      width: _sizeImage,
                      height: _sizeImage,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pizzon - Crib Ln',
                          style: StylesText.headline16,
                        ),
                        Text(
                          '1x Black Peper',
                          style: StylesText.caption.copyWith(
                            color: AppColors.neutral3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _distantHeight(5),
                        TimeSpaceRating(
                          time: time,
                          distant: distant,
                          rating: rating,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        isDiscount ? _discount(_paddingTop, _paddingRight) : SizedBox(),
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

  _discount(_paddingTop, _paddingRight) {
    return Positioned(
      top: _paddingTop,
      left: _paddingRight,
      child: Container(
        width: 56,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          color: AppColors.sematicGreen,
        ),
        child: Center(
          child: Text(
            '20%',
            style: StylesText.bodyText15.copyWith(color: AppColors.neutral6),
          ),
        ),
      ),
    );
  }
}
