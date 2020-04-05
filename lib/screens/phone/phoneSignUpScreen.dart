import 'package:flutter/material.dart';
import 'package:greatapp/util/constants/constErrorMsgs.dart';
import 'package:greatapp/util/constants/constPadding.dart';
import 'package:greatapp/util/constants/constStrings.dart';
import 'package:greatapp/util/validations/validations.dart';

class PhoneSignUpScreen extends StatefulWidget {
  static const String pageId = 'PhoneSignUpScreen';
  @override
  _PhoneSignUpScreenState createState() => _PhoneSignUpScreenState();
}

class _PhoneSignUpScreenState extends State<PhoneSignUpScreen> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email;
  String _password;
  String _confirmPassword;

  void validateAndSave() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print(_email + ' ' + _password + ' ' + _confirmPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ConstStrings.kSignUp.toUpperCase(),
        ),
      ),
      body: Padding(
        padding: ConstPadding.kPaddingHorizontal24,
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
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
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: ConstStrings.kConfirmPassword,
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return ConstErrorMsgs.kConfirmPasswordIsEmpty;
                    }

                    if (!Validations.isValidPassword(value)) {
                      return ConstErrorMsgs.kConfirmPasswordIsInvalid;
                    }

                    return null;
                  },
                  onSaved: (String value) => _confirmPassword = value,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  validateAndSave();
                },
                child: Text(
                  ConstStrings.kSignUp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
