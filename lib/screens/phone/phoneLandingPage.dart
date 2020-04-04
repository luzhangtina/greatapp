import 'package:flutter/material.dart';
import 'package:greatapp/screens/phone/phoneSignInScreen.dart';
import 'package:greatapp/screens/phone/phoneSignUpScreen.dart';
import 'package:greatapp/util/constColors.dart';
import 'package:greatapp/util/constFonts.dart';
import 'package:greatapp/util/constPadding.dart';
import 'package:greatapp/util/constSizedBoxes.dart';
import 'package:greatapp/util/constStrings.dart';

class PhoneLandingPage extends StatefulWidget {
  static const String pageId = 'PhoneLandingPage';

  @override
  _PhoneLandingPageState createState() => _PhoneLandingPageState();
}

class _PhoneLandingPageState extends State<PhoneLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.kLandingPageBKColor,
      body: Padding(
        padding: ConstPadding.kPaddingHorizontal24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              ConstStrings.kProductName,
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.w900,
                color: ConstColors.kWhite,
                fontFamily: ConstFonts.kBungee,
              ),
              textAlign: TextAlign.center,
            ),
            ConstSizedBoxes.kSizedBox48,
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, PhoneSignInScreen.pageId);
              },
              child: Text(
                ConstStrings.kSignIn,
                style: TextStyle(
                  color: ConstColors.kWhite,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ConstSizedBoxes.kSizedBox30,
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, PhoneSignUpScreen.pageId);
              },
              child: Text(
                ConstStrings.kSignUp,
                style: TextStyle(
                  color: ConstColors.kWhite,
                  fontWeight: FontWeight.w700,
                ),
              ),
              color: ConstColors.kLandingPageSignUpButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}
