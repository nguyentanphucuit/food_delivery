import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class CreditCardAccuracy extends StatelessWidget {
  TextEditingController securityCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(_width),
      ),
    );
  }

  _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        backgroundColor: AppColors.neutral6,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Icon(Icons.arrow_back_ios, size: 20, color: AppColors.neutral1),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Credit Card Adding',
            style: StylesText.headline20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  _buildBody(_width) {
    return Container(
      height: 450,
      padding: EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          _distantHeight(6),
          Image.asset('assets/images/1.0x/credit_card_back.png'),
          _distantHeight(6),
          Row(
            children: [
              _textInput(1, 'Security Code  (CVV)', false, securityCode),
            ],
          ),
          _distantHeight(12),
          _addCreditCard(_width),
        ],
      ),
    );
  }

  _textInput(
      int flex, String name, bool isAccuracy, TextEditingController tec) {
    return Expanded(
      flex: flex,
      child: TextField(
        keyboardType: TextInputType.number,
        style: StylesText.bodyText16.copyWith(fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: name,
          labelStyle: StylesText.bodyText16
              .copyWith(color: AppColors.neutral3, fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          fillColor: Colors.red,
          suffixIcon: isAccuracy
              ? Icon(
                  Icons.check,
                  color: AppColors.sematicGreen,
                )
              : null,
          focusedBorder: isAccuracy
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: new BorderSide(
                    color: AppColors.sematicGreen,
                    width: 1.5,
                  ),
                )
              : null,
        ),
        controller: tec,
      ),
    );
  }

  _addCreditCard(_width) {
    return Container(
      width: _width,
      padding: EdgeInsets.only(top: 16, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: _width,
            height: 50,
            child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  primary: AppColors.primaryOrangeRed, // background
                ),
                child: Text(
                  'ADD CREDIT CARD',
                  style: StylesText.bodyText15.copyWith(
                    color: AppColors.neutral6,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
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
