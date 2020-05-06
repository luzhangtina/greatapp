import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/util/constants/constColors.dart';
import 'package:greatapp/util/constants/constErrorMsgs.dart';
import 'package:greatapp/util/constants/constFonts.dart';
import 'package:greatapp/util/constants/constPadding.dart';
import 'package:greatapp/util/constants/constStrings.dart';
import 'package:greatapp/util/validations/validations.dart';

enum FormType {
  signIn,
  signUp,
}

class PhoneLogInPage extends StatefulWidget {
  static const String pageId = 'PhoneLogInPage';
  final BaseAuth auth;
  final VoidCallback signedInProcess;

  const PhoneLogInPage({@required this.auth, @required this.signedInProcess});

  @override
  _PhoneLogInPageState createState() => _PhoneLogInPageState();
}

class _PhoneLogInPageState extends State<PhoneLogInPage> {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FormType _formType = FormType.signIn;
  String _email;
  String _password;

  String _validatePassword(String value) {
    if (value.isEmpty) {
      return ConstErrorMsgs.kPasswordIsEmpty;
    }
    if (!Validations.isValidPassword(password: value)) {
      return ConstErrorMsgs.kPasswordIsInvalid;
    }
    return null;
  }

  String _validateEmail(String value) {
    if (value.isEmpty) {
      return ConstErrorMsgs.kEmailIsEmpty;
    }
    if (!Validations.isValidEmailAddress(email: value)) {
      return ConstErrorMsgs.kEmailIsInvalid;
    }
    return null;
  }

  bool _validateAndSave() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }

    return false;
  }

  void _validateAndSubmit() async {
    if (_validateAndSave()) {
      try {
        if (_formType == FormType.signIn) {
          final String signedInUserId =
              await widget.auth.signInWithEmailAndPassword(
            email: _email,
            password: _password,
          );
        } else {
          final String signedInUserId =
              await widget.auth.createUserWithEmailAndPassword(
            email: _email,
            password: _password,
          );
        }

        widget.signedInProcess();
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  void moveToSignIn() {
    _formKey.currentState.reset();
    setState(() {
      _formType = FormType.signIn;
    });
  }

  void moveToSignUp() {
    _formKey.currentState.reset();
    setState(() {
      _formType = FormType.signUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.kLogInPageBKColor,
      body: Padding(
        padding: ConstPadding.kPaddingHorizontal24,
        child: Form(
          key: _formKey,
          child: ListView(
            children: buildFormTextFields() + buildButtons(),
          ),
        ),
      ),
    );
  }

  List<Widget> buildFormTextFields() {
    return <Widget>[
      SizedBox(
        height: MediaQuery.of(context).size.height / 4,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 5,
        child: Text(
          ConstStrings.kProductName,
          style: TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.w900,
            color: ConstColors.kWhite,
            fontFamily: ConstFonts.kBungee,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 7,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: ConstStrings.kEnterEmail,
            prefixIcon: Icon(
              Icons.email,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ConstColors.kLogInPageErrorTextColor,
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(
                20.0,
              )),
            ),
            errorStyle: TextStyle(
              color: ConstColors.kLogInPageErrorTextColor,
            ),
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.emailAddress,
          validator: (String value) => _validateEmail(value),
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
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ConstColors.kLogInPageErrorTextColor,
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(
                20.0,
              )),
            ),
            errorStyle: TextStyle(
              color: ConstColors.kLogInPageErrorTextColor,
            ),
          ),
          obscureText: true,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.visiblePassword,
          validator: (String value) => _validatePassword(value),
          onSaved: (String value) => _password = value,
        ),
      ),
    ];
  }

  List<Widget> buildButtons() {
    if (_formType == FormType.signIn) {
      return <Widget>[
        RaisedButton(
          onPressed: () => _validateAndSubmit(),
          child: Text(
            ConstStrings.kSignIn,
          ),
        ),
        FlatButton(
          onPressed: () => moveToSignUp(),
          child: Text(
            ConstStrings.kDontHaveAccountSignUp,
            style: TextStyle(color: ConstColors.kWhite),
          ),
        ),
      ];
    } else {
      return <Widget>[
        RaisedButton(
          onPressed: () => _validateAndSubmit(),
          child: Text(
            ConstStrings.kSignUp,
          ),
        ),
        FlatButton(
          onPressed: () => moveToSignIn(),
          child: Text(
            ConstStrings.kHaveAccountSignIn,
            style: TextStyle(color: ConstColors.kWhite),
          ),
        ),
      ];
    }
  }
}
