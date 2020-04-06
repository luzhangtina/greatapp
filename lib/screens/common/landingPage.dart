import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/screens/phone/phoneLandingPage.dart';
import 'package:greatapp/screens/web/webLandingPage.dart';

class LandingPage extends StatefulWidget {
  static const String pageId = 'LandingPage';

  final BaseAuth auth;

  const LandingPage({this.auth});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return kIsWeb ? WebLandingPage() : PhoneLandingPage(auth: widget.auth);
  }
}
