import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment Method',
                style: StylesText.headline20,
              ),
            ],
          ),
          _distantHeight(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _paymentMethod(true, 'Cash', 'assets/images/1.0x/cash.png'),
              _paymentMethod(
                  false, 'Card', 'assets/images/1.0x/card.png'),
              _paymentMethod(false, '', 'assets/images/1.0x/3dot.png'),
            ],
          ),
          _distantHeight(4),
          Container(
            height: 50,
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color(0xff9B9B9B),
                  ),
                ),
                hintText: 'Promo Code or Voucher',
                labelStyle:
                    StylesText.bodyText15.copyWith(color: Color(0xff9B9B9B)),
                labelText: 'Promo Code or Voucher',
              ),
            ),
          ),
        ],
      ),
    );
  }

  _paymentMethod(bool isChoose, String text, String image) {
    return Container(
      width: 98,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: isChoose ? AppColors.primarySeashell : AppColors.neutral5,
        ),
        onPressed: () {},
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: StylesText.bodyText15.copyWith(
                  color: isChoose
                      ? AppColors.primaryOrangeRed
                      : AppColors.neutral3,
                ),
              ),
              Container(
                width: 30,
                height: 30,
                child: Image.asset(image),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _distantHeight(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }
}
