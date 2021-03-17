import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileAddress extends StatefulWidget {
  @override
  _ProfileAddressState createState() => _ProfileAddressState();
}

class _ProfileAddressState extends State<ProfileAddress> {
  @override
  void initState() {
    firstName.text = 'Pinocchio';
    lastName.text = 'Ocoho';
    email.text = 'OcohoPin1998@gmail.com';
    gender.text = 'Female';
    phone.text = '(424) 545-1818';
    super.initState();
  }

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(_height),
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
            'Profile & Address',
            style: StylesText.headline20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  _buildBody(_height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _distantHeight(6),
        Center(
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Image.asset('assets/images/1.0x/Avatar.png'),
              Positioned(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppColors.primaryOrange,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.neutral6,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
        ),
        _distantHeight(8),
        _userInfomation(_height),
        _distantHeight(8),
        _address(),
        _distantHeight(20),
        _save(),
      ],
    );
  }

  _userInfomation(_height) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24),
      height: _height * 0.26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              _textInput(18, 'First Name', false, firstName),
              _distantWidth(3),
              _textInput(13, 'Last Name', false, lastName),
            ],
          ),
          _distantHeight(4),
          _textInput(1, 'Email', false, email),
          _distantHeight(4),
          Row(
            children: [
              _textInput(2, 'Gender', false, gender),
              _distantWidth(3),
              _textInput(5, 'Phone', true, phone),
            ],
          ),
        ],
      ),
    );
  }

  _textInput(
      int flex, String name, bool isAccuracy, TextEditingController tec) {
    return Expanded(
      flex: flex,
      child: TextField(
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

  _address() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Address',
                style: StylesText.headline20,
              ),
              Text(
                'Add more',
                style: StylesText.caption.copyWith(
                  color: AppColors.primaryOrangeRed,
                ),
              ),
            ],
          ),
        ),
        _distantHeight(4),
        _location('222 Cullingworth Mills Yard',
            '222 Cullingworth Mills Yard, North Bridge, Halifax'),
        _location('31 Canterbury Road', '31 Canterbury Road, Valley Field'),
      ],
    );
  }

  _location(title, subTitle) {
    return Column(
      children: [
        Divider(height: 0),
        _distantHeight(2),
        Container(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 20,
              ),
              _distantWidth(4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: StylesText.bodyText15
                        .copyWith(color: AppColors.neutral2),
                  ),
                  _distantHeight(2),
                  Text(
                    subTitle,
                    style:
                        StylesText.caption.copyWith(color: AppColors.neutral3),
                  ),
                ],
              ),
            ],
          ),
        ),
        _distantHeight(2),
        Divider(height: 0),
      ],
    );
  }

  _save() {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 24, left: 24, right: 24),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
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
                  'SAVE',
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
