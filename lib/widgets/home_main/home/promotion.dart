import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Promotion extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 111,
          child: PageView(
            controller: controller,
            children: List.generate(
              5,
              (_) => Card(
                child: Container(
                  child: Image.asset(
                    'assets/images/1.0x/Promotion.png',
                  ),
                ),
              ),
            ),
          ),
        ),
        _distantHeight(3),
        Container(
          child: SmoothPageIndicator(
            controller: controller,
            count: 5,
            effect: ExpandingDotsEffect(
              expansionFactor: 4,
              activeDotColor: AppColors.primaryOrangeRed,
              dotHeight: 8,
              dotWidth: 8,
            ),
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
}
