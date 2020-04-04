import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:greatapp/util/constPadding.dart';
import 'package:greatapp/util/constStrings.dart';

class PhoneSignInScreen extends StatefulWidget {
  static const String pageId = 'PhoneSignInScreen';

  @override
  _PhoneSignInScreenState createState() => _PhoneSignInScreenState();
}

class _PhoneSignInScreenState extends State<PhoneSignInScreen> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ConstStrings.kSignIn.toUpperCase(),
        ),
      ),
      body: Padding(
        padding: ConstPadding.kPaddingHorizontal24,
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: ConstStrings.kEnterEmail,
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: ConstStrings.kEnterPassword,
                    prefixIcon: Icon(
                      Icons.enhanced_encryption,
                    ),
                  ),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  // TODO: signIn
                },
                child: Text(
                  ConstStrings.kSignIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
