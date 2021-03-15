import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          child: Scaffold(
            appBar: _buildAppBar(),
            body: _buildBody(),
          ),
        ),
        _buildCircle(-87.0, -66.0, 166.0),
        _buildCircle(-74.0, 55.0, 115.0),
        _buildCircle(154.0, 313.0, 136.0),
      ],
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.neutral6,
      elevation: 0,
      actions: [
        Image.asset('assets/images/1.0x/Notification.png'),
      ],
    );
  }

  _buildBody() {
    return Column(
      children: [
        _buildAvatar(),
        _distantHeight(6),
        _buildInfo(),
      ],
    );
  }

  _buildAvatar() {
    return Stack(
      children: [
        Container(
          height: 190,
          color: AppColors.neutral6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/images/1.0x/Avatar.png'),
              ),
              _distantHeight(6),
              Text(
                'Ocoho Pinocchio',
                style: StylesText.headline20,
              ),
              _distantHeight(2),
              Text(
                '(424) 545-1818',
                style: StylesText.bodyText15.copyWith(
                  color: AppColors.neutral2,
                ),
              ),
              _distantHeight(6),
            ],
          ),
        ),
      ],
    );
  }

  _buildCircle(top, left, size) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffFFAD72), Color(0xffFF7954)],
          ).scale(0.15),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }

  _buildInfo() {
    return Stack(
      children: [
        Column(
          children: [
            _info(Image.asset('assets/images/icons/1.0x/tag.png'), 'My voucher',
                false),
            Divider(height: 1),
            _info(Image.asset('assets/images/icons/1.0x/credit-card.png'),
                'Payment methods', false),
            Divider(height: 1),
            _info(Image.asset('assets/images/icons/1.0x/user.png'),
                'Profile & Address', false),
            _distantHeight(3),
            _info(
                Image.asset(
                    'assets/images/icons/1.0x/live_support_agent_headset.png'),
                'Help center',
                false),
            Divider(height: 1),
            _info(Image.asset('assets/images/icons/1.0x/alert-circle.png'),
                'About us', false),
            _distantHeight(4),
            _info(
                Image.asset(
                  'assets/images/icons/1.0x/log-out.png',
                  color: AppColors.primaryOrangeRed,
                ),
                'Log Out',
                true),
          ],
        ),
      ],
    );
  }

  _info(Image image, String name, bool isLogOut) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      color: AppColors.neutral6,
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              image,
              _distantWidth(3),
              Text(
                name,
                style: StylesText.bodyText15.copyWith(
                  color: !isLogOut
                      ? AppColors.neutral1
                      : AppColors.primaryOrangeRed,
                ),
              ),
            ],
          ),
          !isLogOut
              ? Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.primaryOrangeRed,
                  size: 14,
                )
              : _distantWidth(3),
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
