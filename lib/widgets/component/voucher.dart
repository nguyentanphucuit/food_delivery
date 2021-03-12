import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class Voucher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = 70.0;
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(2, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/1.0x/Subtract.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          Positioned(
              top: 10,
              left: 20,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: _height,
                      height: _height,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.neutral1,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: StylesText.headline20.copyWith(
                                color: AppColors.neutral6,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '%',
                              style: StylesText.headline20.copyWith(
                                color: AppColors.neutral6,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: _width * 0.03),
                    Container(
                      height: _height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Black fries day',
                            style: StylesText.headline16,
                          ),
                          Text(
                            'All black fries',
                            style: StylesText.caption.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.neutral3,
                            ),
                          ),
                          Text(
                            'BLFD30',
                            style: StylesText.headline16,
                          )
                        ],
                      ),
                    ),
                    // SizedBox(width: 70),
                    Container(
                      padding: EdgeInsets.only(left: _width * 0.19),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Exp.',
                            style: StylesText.headline16.copyWith(
                              color: AppColors.primaryOrangeRed,
                            ),
                          ),
                          _distantHeight(2),
                          Text(
                            '07',
                            style: StylesText.headline16,
                          ),
                          Text(
                            'Dec',
                            style: StylesText.headline16,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
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
