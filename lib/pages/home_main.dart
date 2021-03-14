import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:food_delivery/widgets/home_main/home/home.dart';
import 'package:food_delivery/widgets/home_main/order/order.dart';
import 'package:food_delivery/widgets/home_main/saved/saved.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  Flushbar flush;
  bool _wasButtonClicked;
  bool _isDisable = true;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.neutral6,
        body: _buildBody(context),
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  _buildBody(context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: FooterView(
        children: [
          _buildSelect(),
        ],
        footer: _buildFooter(),
        // flex: 4,
      ),
    );
  }

  _buildSelect() {
    switch (_selectedIndex) {
      case 0:
        return Home();
      case 1:
        return Order();
      case 2:
        return Saved();
      default:
    }
  }

  _buildFooter() {
    return Footer(
      backgroundColor: AppColors.neutral6,
      child: SizedBox(),
    );
  }

  _buildBottomNavBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: AppColors.primaryOrangeRed,
      onTap: _onItemTapped,
      // showUnselectedLabels: true,
      unselectedItemColor: AppColors.neutral3,
    );
  }

  _buildFlushbar() {
    _isDisable = false;
    flush = Flushbar<bool>(
      backgroundColor: AppColors.neutral6,
      margin: EdgeInsets.only(left: 32, right: 32, top: 23, bottom: 81),
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
