import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/screens/phone/phoneLogInPage.dart';
import 'package:greatapp/util/constants/custThemeData.dart';
import 'package:greatapp/screens/common/RootPage.dart';

void main() => runApp(GreatApp());

class GreatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final BaseAuth _auth = Auth();

    return MaterialApp(
      theme: CustThemeData.themeData,
      initialRoute: RootPage.pageId,
      routes: {
        RootPage.pageId: (BuildContext context) => RootPage(auth: _auth),
        PhoneLogInPage.pageId: (BuildContext context) =>
            PhoneLogInPage(auth: _auth),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
