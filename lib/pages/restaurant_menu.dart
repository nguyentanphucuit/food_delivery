import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flushbar/flushbar_route.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/circle_tab_indicator.dart';
import 'package:food_delivery/widgets/hot_deals.dart';
import 'package:food_delivery/widgets/special_deliveries.dart';
import 'package:food_delivery/widgets/traditionals.dart';

class RestaurantMenu extends StatefulWidget {
  @override
  _RestaurantMenuState createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Flushbar flush;
  bool _wasButtonClicked;
  bool _isDisable = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: 6,
        child: Scaffold(
          appBar: _buildAppBar(context),
          body: _buildBody(context),
        ),
      ),
    );
  }

  _buildBody(context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 24, left: 24, bottom: 8),
              child: Text(
                'Special Delivery',
                style: StylesText.headline20.copyWith(
                  color: AppColors.neutral2,
                ),
              ),
            ),
            Container(
              height: 440,
              child:
                  SpecialDeliveries(isRateOrder: false, isColorPrimary: true),
            ),
            _buidlSizedBox(2),
            Container(height: 5, color: AppColors.background),
            Container(
              padding: EdgeInsets.only(top: 24, left: 24, bottom: 8),
              child: Text(
                'Hot Deals',
                style: StylesText.headline20.copyWith(
                  color: AppColors.neutral2,
                ),
              ),
            ),
            Container(
              height: 440,
              child: HotDeals(isRateOrder: false, isColorPrimary: true),
            ),
            _buidlSizedBox(2),
            Container(height: 5, color: AppColors.background),
            Container(
              padding: EdgeInsets.only(top: 24, left: 24, bottom: 8),
              child: Text(
                'Traditional',
                style: StylesText.headline20.copyWith(
                  color: AppColors.neutral2,
                ),
              ),
            ),
            Container(
              height: 440,
              child: Traditionals(isRateOrder: false, isColorPrimary: true),
            ),
            _buidlSizedBox(2),
          ],
        ),
      ),
    );
  }

  _buildAppBar(context) {
    return AppBar(
      backgroundColor: AppColors.neutral6,
      elevation: 1.0,
      bottom: PreferredSize(
        child: TabBar(
          labelColor: AppColors.neutral1,
          labelStyle:
              StylesText.bodyText15.copyWith(fontWeight: FontWeight.w600),
          indicator:
              CircleTabIndicator(color: AppColors.primaryOrangeRed, radius: 3),
          unselectedLabelColor: AppColors.neutral1.withOpacity(0.3),
          isScrollable: true,
          tabs: [
            _childTabBar('Autumn'),
            _childTabBar('Special'),
            _childTabBar('Hot deals'),
            _childTabBar('Traditional'),
            _childTabBar('Traditional'),
            _childTabBar('Traditional'),
          ],
        ),
        preferredSize: Size.fromHeight(30.0),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios, size: 24, color: AppColors.neutral1),
          Text(
            'Pizzon - Crib Ln',
            style: StylesText.headline20,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border_outlined,
                size: 24, color: AppColors.neutral1),
            onPressed: () {
              if (_isDisable) _buildFlushbar();

              // _buildFlushbar();
            },
          ),
        ],
      ),
    );
  }

  _childTabBar(String name) {
    return Tab(
      child: Text(
        name,
      ),
    );
  }

  _buidlSizedBox(int scales) {
    return SizedBox(
      height: scales * 4.0,
    );
  }

  _buildFlushbar() {
    _isDisable = false;
    flush = Flushbar<bool>(
      backgroundColor: AppColors.neutral6,
      margin: EdgeInsets.only(left: 32, right: 32, top: 23),
      borderRadius: 6,
      boxShadows: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0.0, 3.0),
          blurRadius: 3.0,
        )
      ],
      titleText: Container(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Checkout - 1 items",
          style: StylesText.caption.copyWith(
            color: AppColors.neutral3,
          ),
        ),
      ),
      messageText: Container(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          "Pizzon - Crib Ln",
          style: StylesText.headline16,
        ),
      ),
      icon: Container(
        // padding: EdgeInsets.only(left: 12),
        margin: EdgeInsets.only(left: 12),
        child: Image.asset(
          'assets/images/1.0x/checkout.png',
        ),
      ),
      mainButton: Column(
        children: [
          IconButton(
            icon: Icon(
              Icons.clear,
              size: 14,
            ),
            onPressed: () {
              flush.dismiss(true);
              _isDisable = true;
            },
          ),
          Icon(null),
        ],
      ),
    ) // <bool> is the type of the result passed to dismiss() and collected by show().then((result){})
      ..show(context).then((result) {
        setState(() {
          // setState() is optional here
          _wasButtonClicked = result;
        });
      });
  }
}
