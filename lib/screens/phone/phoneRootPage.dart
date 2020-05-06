import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/screens/phone/phoneHomePage.dart';
import 'package:greatapp/screens/phone/phoneLogInPage.dart';
import 'package:greatapp/screens/phone/phoneLogo.dart';

enum AuthState {
  logoStart,
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
  AuthState _authState = AuthState.logoStart;

  void logoEndProcess() {
    widget.auth.currentUser().then((uid) => setState(() {
          _authState = uid == null ? AuthState.notSignedIn : AuthState.signedIn;
        }));
  }

  void signedInProcess() {
    setState(() {
      _authState = AuthState.signedIn;
    });
  }

  void signedOutProcess() {
    setState(() {
      _authState = AuthState.notSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_authState) {
      case AuthState.logoStart:
        return PhoneLogo(
          logoEndProcess: logoEndProcess,
        );
      case AuthState.notSignedIn:
        return PhoneLogInPage(
          auth: widget.auth,
          signedInProcess: signedInProcess,
        );
      case AuthState.signedIn:
        return PhoneHomePage(
          auth: widget.auth,
          signedOutProcess: signedOutProcess,
        );
    }
  }
}
