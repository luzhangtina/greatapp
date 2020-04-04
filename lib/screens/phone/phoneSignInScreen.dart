import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:greatapp/util/constColors.dart';
import 'package:greatapp/util/constPadding.dart';
import 'package:greatapp/util/constStrings.dart';

class PhoneSignInScreen extends StatefulWidget {
  static const String pageId = 'PhoneSignInScreen';

  @override
  _PhoneSignInScreenState createState() => _PhoneSignInScreenState();
}

class _PhoneSignInScreenState extends State<PhoneSignInScreen> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  void validateAndSave() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print(_email + ' ' + _password);
    }
  }

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
                    errorStyle: TextStyle(color: ConstColors.kErrorTextColor),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ConstColors.kErrorBorderColor,
                        width: 2.0,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(
                        20.0,
                      )),
                    ),
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value) {
                    return value.isEmpty ? 'Email cannot be empty' : null;
                  },
                  onSaved: (String value) => _email = value,
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
                    errorStyle: TextStyle(color: ConstColors.kErrorTextColor),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ConstColors.kErrorBorderColor,
                        width: 2.0,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(
                        20.0,
                      )),
                    ),
                  ),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (String value) {
                    return value.isEmpty ? 'Password cannot be empty' : null;
                  },
                  onSaved: (String value) => _password = value,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  validateAndSave();
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
