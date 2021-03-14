import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/themes/app_colors.dart';
import 'package:food_delivery/themes/text_styles.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isSignIn = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.neutral6,
        appBar: _buildAppbar(),
        body: _buildBody(context),
      ),
    );
  }

  _buildAppbar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () =>
            Navigator.of(context).popUntil((route) => route.isFirst),
      ),
      title: Text("Login"),
    );
  }

  _buildBody(context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: FooterView(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isSignIn ? "Sign In" : "Sign Up",
                  style: StylesText.headline40,
                ),
                _distantHeight(4),
                RichText(
                  text: TextSpan(
                    // style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: isSignIn
                            ? 'Don\'t have an account? '
                            : 'Enter your Email and new Password for sign up, or ',
                        style: StylesText.bodyText15,
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(() {
                              isSignIn = !isSignIn;
                            });
                          },
                        text:
                            isSignIn ? 'Sign up now!' : 'Already have account?',
                        style: StylesText.bodyText15.copyWith(
                          color: AppColors.primaryOrangeRed,
                        ),
                      )
                    ],
                  ),
                ),
                _distantHeight(8),
                _buildTextFormField('Email or Phone Number'),
                _distantHeight(4),
                _buildTextFormField('Password'),
                _distantHeight(4),
                isSignIn
                    ? SizedBox()
                    : Column(
                        children: [
                          _buildTextFormField('Confirm Password'),
                          _distantHeight(4),
                        ],
                      ),
                isSignIn
                    ? Center(
                        child: Text(
                        'Forgot Password?',
                        style: StylesText.bodyText15,
                      ))
                    : SizedBox(),
                _distantHeight(6),
                _buildElevatedButton(
                  AppColors.primaryOrangeRed,
                  Icon(null),
                  Text(
                    isSignIn ? 'SIGN IN' : 'SIGN UP',
                    style: StylesText.bodyText16.copyWith(
                      color: AppColors.neutral6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _distantHeight(6),
                isSignIn
                    ? Center(
                        child: Text(
                        'OR',
                        style: StylesText.bodyText15,
                      ))
                    : SizedBox(),
                _distantHeight(6),
                isSignIn
                    ? _buildElevatedButton(
                        AppColors.sematicBlueGrey,
                        Image(
                          image: AssetImage(
                              'assets/images/1.0x/facebook_logo.png'),
                        ),
                        Text(
                          'CONTINUE WITH FACEBOOK',
                          style: StylesText.bodyText14.copyWith(
                            color: AppColors.neutral6,
                            fontWeight: FontWeight.w600,
                          ),
                        ))
                    : SizedBox(),
                _distantHeight(6),
                isSignIn
                    ? _buildElevatedButton(
                        AppColors.sematicBlue,
                        Image(
                          image:
                              AssetImage('assets/images/1.0x/google_logo.png'),
                        ),
                        Text(
                          'CONTINUE WITH GOOGLE',
                          style: StylesText.bodyText14.copyWith(
                            color: AppColors.neutral6,
                            fontWeight: FontWeight.w600,
                          ),
                        ))
                    : SizedBox(),
                // _distantHeight(18),
              ],
            ),
          ),
        ],
        footer: _buildFooter(context),
        flex: 4,
      ),
    );
  }

  _buildElevatedButton(Color color, icon, Text text) {
    return Container(
      // width: 327,
      height: 50,
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          primary: color, // background
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            text,
            Icon(null),
          ],
        ),
      ),
    );
  }

  _buildTextFormField(String text) {
    return Container(
      height: 50,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(width: 1),
          ),
          hintText: text,
          labelStyle: StylesText.bodyText16.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.neutral3,
          ),
          labelText: text,
        ),
      ),
    );
  }

  _buildFooter(context) {
    final _width = MediaQuery.of(context).size.width;
    return isSignIn
        ? Footer(
            backgroundColor: AppColors.neutral6,
            child: SizedBox(),
          )
        : Footer(
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: 'By signing up you agree to our ',
                      style: StylesText.bodyText15,
                    ),
                    TextSpan(
                      text: 'Teams Condition',
                      style: StylesText.bodyText15.copyWith(
                        color: AppColors.primaryOrangeRed,
                      ),
                    ),
                    TextSpan(
                      text: ' & ',
                      style: StylesText.bodyText15,
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: StylesText.bodyText15.copyWith(
                        color: AppColors.primaryOrangeRed,
                      ),
                    )
                  ],
                ),
              ),
            ),
            backgroundColor: AppColors.neutral5,
            padding:
                EdgeInsets.only(left: _width * 0.152, right: _width * 0.152),
            // alignment: Alignment
            //     .bottomCenter
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
