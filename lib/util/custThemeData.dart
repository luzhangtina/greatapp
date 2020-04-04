import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greatapp/util/constColors.dart';
import 'package:greatapp/util/constFonts.dart';

class CustThemeData {
  CustThemeData._();

  static ThemeData themeData = ThemeData(
    primaryColor: ConstColors.kPrimaryColor,
    primarySwatch: MaterialColor(
      900,
      ConstColors.kPrimarySwatch,
    ),
    scaffoldBackgroundColor: ConstColors.kWhite,
    focusColor: ConstColors.kPrimaryColor,
    highlightColor: ConstColors.kHighlightColor,
    selectedRowColor: ConstColors.kSelectedRowColor,
    textSelectionColor: ConstColors.kTextSelectionColor,
    cursorColor: ConstColors.kCursorColor,
    appBarTheme: AppBarTheme(
      color: ConstColors.kPrimaryColor,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: ConstColors.kWhite,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ConstColors.kDisabledColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ConstColors.kInputBorderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(
          20.0,
        )),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ConstColors.kInputBorderColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(
          20.0,
        )),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ConstColors.kErrorBorderColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(
          20.0,
        )),
      ),
      errorStyle: TextStyle(
        color: ConstColors.kErrorTextColor,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: ConstColors.kButtonColor,
      disabledColor: ConstColors.kDisabledColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      textTheme: ButtonTextTheme.primary,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(
          20.0,
        ),
      )),
    ),
    fontFamily: ConstFonts.kRoboto,
    hintColor: ConstColors.kDisabledColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.w800,
      ),
      headline2: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.w800,
      ),
      headline3: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w800,
      ),
      headline4: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w800,
      ),
      headline5: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w900,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w100,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w100,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w100,
      ),
      button: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.w800,
      ),
      headline2: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.w800,
      ),
      headline3: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w800,
      ),
      headline4: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w800,
      ),
      headline5: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w900,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
      ),
      subtitle1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w100,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w100,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w100,
      ),
      button: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    iconTheme: IconThemeData(
      color: ConstColors.kIconColor,
    ),
    errorColor: ConstColors.kErrorTextColor,
  );
}
