import 'package:flutter/material.dart';
import 'package:greatapp/util/constPadding.dart';
import 'package:greatapp/util/constSizedBoxes.dart';
import 'package:greatapp/util/constStrings.dart';

class PhoneSignUpScreen extends StatefulWidget {
  static const String pageId = 'PhoneSignUpScreen';
  @override
  _PhoneSignUpScreenState createState() => _PhoneSignUpScreenState();
}

class _PhoneSignUpScreenState extends State<PhoneSignUpScreen> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                ),
              ),
              ConstSizedBoxes.kSizedBox30,
              RaisedButton(
                onPressed: () {
                  // TODO: signUp
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
