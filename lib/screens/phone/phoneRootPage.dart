import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/screens/phone/phoneLogInPage.dart';

class PhoneRootPage extends StatefulWidget {
  static const String pageId = 'PhoneRootPage';
  final BaseAuth auth;

  const PhoneRootPage({@required this.auth});

  @override
  _PhoneRootPageState createState() => _PhoneRootPageState();
}

class _PhoneRootPageState extends State<PhoneRootPage> {
  @override
  Widget build(BuildContext context) {
    return PhoneLogInPage(
      auth: widget.auth,
    );
  }
}
