import 'package:flutter/material.dart';
import 'package:food_delivery/providers/list_special_delivery.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/component/card_option.dart';
import 'package:food_delivery/widgets/component/food_card.dart';
import 'package:provider/provider.dart';

class FoodOption extends StatefulWidget {
  @override
  _FoodOptionState createState() => _FoodOptionState();
}

enum OptionSize { m, l, xl }
enum OptionTopping { potato, pineapple, pork }
enum OptionSauces { ketchup, chili, ginger }

class _FoodOptionState extends State<FoodOption> {
  OptionSize _size = OptionSize.m;
  OptionTopping _topping = OptionTopping.potato;
  OptionSauces _sauces = OptionSauces.ketchup;

  int _items = 1;
  int _total = 15;

  int _priceSize = 0;
  int _priceTopping = 0;
  int _priceSauces = 0;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    final _listSpecialDelivery =
        Provider.of<ListSpecialDelivery>(context).specialDelivery;
    final _specialDelivery = _listSpecialDelivery[0];

    return Container(
      height: MediaQuery.of(context).size.height * 0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 8, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.clear,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  'Add Item',
                  style: StylesText.headline20,
                ),
                Icon(null),
              ],
            ),
          ),
          _distantHeight(1),
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Divider(height: 0),
          ),
          _distantHeight(2),
          CardOption(
            title: _specialDelivery.title,
            sub: _specialDelivery.sub,
            price: _specialDelivery.price,
            bag: '999+',
            image: _specialDelivery.image,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'Size',
                    style: StylesText.headline16.copyWith(
                      color: AppColors.neutral2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                _distantHeight(4),
                _option(_width),
                Divider(height: 0),
                _distantHeight(4),
                Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'Topping',
                    style: StylesText.headline16.copyWith(
                      color: AppColors.neutral2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                _distantHeight(4),
                _optionTopping(),
                Divider(height: 0),
                _distantHeight(4),
                Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'Sauces',
                    style: StylesText.headline16.copyWith(
                      color: AppColors.neutral2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                _distantHeight(4),
                _optionSauces(),
                _distantHeight(4),
                Divider(height: 0),
                Container(
                  padding: EdgeInsets.only(left: 12, top: 16),
                  child: Text(
                    '+ Special instruction',
                    style: StylesText.headline16.copyWith(
                      color: AppColors.primaryOrange,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                _distantHeight(4),
                Divider(height: 0),
                _distantHeight(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: _width * 0.065,
                      height: _width * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xffFFECDA),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.remove,
                          size: 20,
                        ),
                        padding: EdgeInsets.only(left: 0.0),
                        onPressed: () {
                          setState(() {
                            _items > 0 ? _items-- : _items;
                          });
                        },
                      ),
                    ),
                    _distantWidth(8),
                    Text(
                      _items.toString(),
                      style: StylesText.headline20,
                    ),
                    _distantWidth(8),
                    Container(
                      width: _width * 0.065,
                      height: _width * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.primaryOrangeRed,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          // iconSize: 14,
                          icon: Icon(
                            Icons.add,
                            color: AppColors.neutral6,
                            size: 20,
                          ),
                          padding: EdgeInsets.only(left: 0.0),
                          onPressed: () {
                            setState(() {
                              _items++;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                _distantHeight(8),
                Container(
                  padding: EdgeInsets.only(left: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        primary: AppColors.primaryOrangeRed, // background
                      ),
                      child: Text(
                        'ADD TO BAG (\$' + total() + '.00)',
                        style: StylesText.bodyText15.copyWith(
                          color: AppColors.neutral6,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String total() {
    return ((_total + _priceSauces + _priceSize + _priceTopping) * _items)
        .toString();
  }

  _option(_width) {
    return Column(
      children: [
        Container(
          height: 20,
          width: _width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Radio<OptionSize>(
                    activeColor: AppColors.primaryOrangeRed,
                    value: OptionSize.values[0],
                    groupValue: _size,
                    onChanged: (OptionSize value) {
                      setState(() {
                        _size = value;
                        _priceSize = 12;
                      });
                    },
                  ),
                  Text('M'),
                ],
              ),
              Text('\$ 12.00'),
            ],
          ),
        ),
        _distantHeight(2),
        Container(
          height: 20,
          child: Row(
            children: [
              Radio<OptionSize>(
                activeColor: AppColors.primaryOrangeRed,
                value: OptionSize.values[1],
                groupValue: _size,
                onChanged: (OptionSize value) {
                  setState(() {
                    _size = value;
                    _priceSize = 15;
                  });
                },
              ),
              Text('L'),
            ],
          ),
        ),
        _distantHeight(2),
        Container(
          height: 20,
          child: Row(
            children: [
              Radio<OptionSize>(
                activeColor: AppColors.primaryOrangeRed,
                value: OptionSize.values[2],
                groupValue: _size,
                onChanged: (OptionSize value) {
                  setState(() {
                    _size = value;
                    _priceSize = 18;
                  });
                },
              ),
              Text('XL'),
            ],
          ),
        ),
        _distantHeight(2),
      ],
    );
  }

  _optionTopping() {
    return Column(
      children: [
        Container(
          height: 20,
          child: Row(
            children: [
              Radio<OptionTopping>(
                activeColor: AppColors.primaryOrangeRed,
                value: OptionTopping.values[0],
                groupValue: _topping,
                onChanged: (OptionTopping value) {
                  setState(() {
                    _topping = value;
                    _priceTopping = 3;
                  });
                },
              ),
              Text('Potato'),
            ],
          ),
        ),
        _distantHeight(2),
        Container(
          height: 20,
          child: Row(
            children: [
              Radio<OptionTopping>(
                activeColor: AppColors.primaryOrangeRed,
                value: OptionTopping.values[1],
                groupValue: _topping,
                onChanged: (OptionTopping value) {
                  setState(() {
                    _topping = value;
                    _priceTopping = 4;
                  });
                },
              ),
              Text('Pineapple'),
            ],
          ),
        ),
        _distantHeight(2),
        Container(
          height: 20,
          child: Row(
            children: [
              Radio<OptionTopping>(
                activeColor: AppColors.primaryOrangeRed,
                value: OptionTopping.values[2],
                groupValue: _topping,
                onChanged: (OptionTopping value) {
                  setState(() {
                    _topping = value;
                    _priceTopping = 5;
                  });
                },
              ),
              Text('Pork'),
            ],
          ),
        ),
        _distantHeight(2),
      ],
    );
  }

  _optionSauces() {
    return Column(
      children: [
        Container(
          height: 20,
          child: Row(
            children: [
              Radio<OptionSauces>(
                activeColor: AppColors.primaryOrangeRed,
                value: OptionSauces.values[0],
                groupValue: _sauces,
                onChanged: (OptionSauces value) {
                  setState(() {
                    _sauces = value;
                    _priceSauces = 0;
                  });
                },
              ),
              Text('Ketchup'),
            ],
          ),
        ),
        _distantHeight(2),
        Container(
          height: 20,
          child: Row(
            children: [
              Radio<OptionSauces>(
                activeColor: AppColors.primaryOrangeRed,
                value: OptionSauces.values[1],
                groupValue: _sauces,
                onChanged: (OptionSauces value) {
                  setState(() {
                    _sauces = value;
                    _priceSauces = 0;
                  });
                },
              ),
              Text('Chili'),
            ],
          ),
        ),
        _distantHeight(2),
        Container(
          height: 20,
          child: Row(
            children: [
              Radio<OptionSauces>(
                activeColor: AppColors.primaryOrangeRed,
                value: OptionSauces.values[2],
                groupValue: _sauces,
                onChanged: (OptionSauces value) {
                  setState(() {
                    _sauces = value;
                    _priceSauces = 0;
                  });
                },
              ),
              Text('Ginger'),
            ],
          ),
        ),
        // _distantHeight(3),
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
