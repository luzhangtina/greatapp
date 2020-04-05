import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:greatapp/util/constants/constErrorMsgs.dart';
import 'package:greatapp/util/constants/constPadding.dart';
import 'package:greatapp/util/constants/constStrings.dart';
import 'package:greatapp/util/validations/validations.dart';

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
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return ConstErrorMsgs.kEmailIsEmpty;
                    }

                    if (!Validations.isValidEmailAddress(value)) {
                      return ConstErrorMsgs.kEmailIsInvalid;
                    }

                    return null;
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
                  ),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return ConstErrorMsgs.kPasswordIsEmpty;
                    }

                    if (!Validations.isValidPassword(value)) {
                      return ConstErrorMsgs.kPasswordIsInvalid;
                    }

                    return null;
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
