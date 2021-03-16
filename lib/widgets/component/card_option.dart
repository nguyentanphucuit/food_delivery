import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class CardOption extends StatelessWidget {
  final String title;
  final String sub;
  final String price;
  final String bag;
  final String image;

  const CardOption({
    @required this.title,
    @required this.sub,
    @required this.price,
    @required this.bag,
    @required this.image,
  });
  @override
  Widget build(BuildContext context) {
    final _sizeImage = 74.0;
    final _width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          padding: EdgeInsets.only(left: 24, right: 24),
          height: _sizeImage,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  image,
                  width: _sizeImage,
                  height: _sizeImage,
                ),
              ),
              _distantWidth(4),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: StylesText.headline16,
                        ),
                        _distantWidth(2),
                        _onlyMoney()
                        // Text(
                        //   'KCal : ',
                        //   style: StylesText.caption.copyWith(
                        //     color: AppColors.neutral2,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // )
                      ],
                    ),
                    Text(
                      sub,
                      style: StylesText.caption.copyWith(
                        color: AppColors.neutral3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    _distantHeight(2),
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 14,
                          color: AppColors.neutral3,
                        ),
                        _distantWidth(1),
                        Text(
                          bag,
                          style: StylesText.caption.copyWith(
                            color: AppColors.neutral3,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  _onlyMoney() {
    return Row(
      children: [
        Text(
          '\$ ' + price,
          style: StylesText.headline16.copyWith(
            color: AppColors.primaryOrange,
            fontWeight: FontWeight.w600,
          ),
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
