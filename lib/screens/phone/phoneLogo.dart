import 'package:flutter/material.dart';
import 'package:greatapp/util/constants/constColors.dart';
import 'package:greatapp/util/constants/constFonts.dart';
import 'package:greatapp/util/constants/constStrings.dart';

class PhoneLogo extends StatefulWidget {
  static const String pageId = 'PhoneLogInPage';
  final VoidCallback logoEndProcess;

  const PhoneLogo({this.logoEndProcess});

  @override
  _PhoneLogoState createState() => _PhoneLogoState();
}

class _PhoneLogoState extends State<PhoneLogo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller.forward(from: 0);
    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        widget.logoEndProcess();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.kLogoPageBKColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            ConstStrings.kProductName,
            style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.w900,
              color: ConstColors.kWhite,
              fontFamily: ConstFonts.kBungee,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
