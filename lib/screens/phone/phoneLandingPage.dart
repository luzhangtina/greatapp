import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/screens/phone/phoneLogInPage.dart';

class PhoneLandingPage extends StatefulWidget {
  static const String pageId = 'PhoneLandingPage';
  final BaseAuth auth;

  const PhoneLandingPage({@required this.auth});

  @override
  _PhoneLandingPageState createState() => _PhoneLandingPageState();
}

class _PhoneLandingPageState extends State<PhoneLandingPage> {
  @override
  Widget build(BuildContext context) {
    return PhoneLogInPage(
      auth: widget.auth,
    );
  }
}
