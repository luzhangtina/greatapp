import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/util/constants/constColors.dart';
import 'package:greatapp/util/constants/constStrings.dart';

class PhoneHomePage extends StatelessWidget {
  final BaseAuth auth;
  final VoidCallback signedOutProcess;

  PhoneHomePage({this.auth, this.signedOutProcess});

  void _onSignOut() async {
    try {
      await auth.signOut();
      signedOutProcess();
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            child: Text(
              ConstStrings.kLogOut,
              style: TextStyle(
                color: ConstColors.kWhite,
              ),
            ),
            onPressed: _onSignOut,
          ),
        ],
      ),
      body: Container(
        child: const Center(
          child: Text(
            'Welcome',
          ),
        ),
      ),
    );
  }
}
