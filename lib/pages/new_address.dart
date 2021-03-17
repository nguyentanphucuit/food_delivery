import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:flutter/material.dart';

class NewAddress extends StatefulWidget {
  final name;
  final gender;
  final phone;

  NewAddress({
    @required this.name,
    @required this.gender,
    @required this.phone,
  });
  @override
  _NewAddressState createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
  @override
  void initState() {
    name.text = widget.name;
    gender.text = widget.gender;
    phone.text = widget.phone;
    super.initState();
  }

  TextEditingController name = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController newAddress = TextEditingController();
  TextEditingController buildingFloor = TextEditingController();
  TextEditingController roomName = TextEditingController();
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
            'Add New Address',
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
        Image.asset('assets/images/1.0x/map.png'),
        _distantHeight(6),
        _userInfomation(_height),
        _save(),
      ],
    );
  }

  _userInfomation(_height) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24),
      height: _height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // _distantHeight(6),
          _address('Contact'),
          _distantHeight(4),
          _textInput(1, 'Name', false, name),
          _distantHeight(4),
          Container(
            height: _height * 0.065,
            child: Row(
              children: [
                _textInput(2, 'Gender', false, gender),
                _distantWidth(3),
                _textInput(5, 'Phone', true, phone),
              ],
            ),
          ),
          _distantHeight(8),
          _address('Address'),
          _distantHeight(4),
          _textInput(1, 'New Address', false, newAddress),
          _distantHeight(4),
          Container(
            height: _height * 0.065,
            child: Row(
              children: [
                _textInput(18, 'Building / Floor', false, buildingFloor),
                _distantWidth(3),
                _textInput(13, 'Room Name', false, roomName),
              ],
            ),
          ),
          _distantHeight(15),
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

  _address(title) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: StylesText.headline20,
              ),
            ],
          ),
        ),
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
