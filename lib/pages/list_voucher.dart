import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/circle_tab_indicator.dart';
import 'package:food_delivery/widgets/component/voucher.dart';

class ListVoucher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          backgroundColor: AppColors.neutral6,
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.neutral6,
      elevation: 1.0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Icon(Icons.arrow_back_ios, size: 20, color: AppColors.neutral1),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          'My Voucher',
          style: StylesText.headline20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
            Tab(child: Text('Vouchers')),
            Tab(child: Text('Recently Used')),
            Tab(child: Text('Expired')),
          ],
        ),
        preferredSize: Size.fromHeight(30.0),
      ),
    );
  }

  _buildBody() {
    return Container(
      padding: EdgeInsets.all(24),
      child: TabBarView(
        children: [
          Voucher(),
          Voucher(),
          Voucher(),
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
