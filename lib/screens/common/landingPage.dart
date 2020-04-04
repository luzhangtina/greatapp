import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:greatapp/screens/phone/phoneLandingPage.dart';
import 'package:greatapp/screens/web/webLandingPage.dart';

class LandingPage extends StatefulWidget {
  static const String pageId = 'LandingPage';

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return kIsWeb ? WebLandingPage() : Center(child: PhoneLandingPage());
  }
}
