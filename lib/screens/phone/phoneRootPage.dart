import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/screens/phone/phoneLogInPage.dart';

enum AuthState {
  notSignedIn,
  signedIn,
}

class PhoneRootPage extends StatefulWidget {
  static const String pageId = 'PhoneRootPage';
  final BaseAuth auth;

  const PhoneRootPage({@required this.auth});

  @override
  _PhoneRootPageState createState() => _PhoneRootPageState();
}

class _PhoneRootPageState extends State<PhoneRootPage> {
  final AuthState _authState = AuthState.notSignedIn;

  @override
  Widget build(BuildContext context) {
    switch (_authState) {
      case AuthState.notSignedIn:
        return PhoneLogInPage(
          auth: widget.auth,
        );
      case AuthState.signedIn:
        return Container(
          child: const Text('Welcome'),
        );
    }
  }
}
