import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greatapp/screens/phone/phoneSignInScreen.dart';
import 'package:greatapp/screens/phone/phoneSignUpScreen.dart';
import 'package:greatapp/util/custThemeData.dart';
import 'package:greatapp/screens/common/landingPage.dart';

void main() => runApp(GreatApp());

class GreatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustThemeData.themeData,
      initialRoute: LandingPage.pageId,
      routes: {
        LandingPage.pageId: (BuildContext context) => LandingPage(),
        PhoneSignInScreen.pageId: (BuildContext context) => PhoneSignInScreen(),
        PhoneSignUpScreen.pageId: (BuildContext context) => PhoneSignUpScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
