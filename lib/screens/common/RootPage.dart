import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:greatapp/api/auth.dart';
import 'package:greatapp/screens/phone/phoneRootPage.dart';
import 'package:greatapp/screens/web/webLandingPage.dart';

class RootPage extends StatefulWidget {
  static const String pageId = 'RootPage';

  final BaseAuth auth;

  const RootPage({this.auth});

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return kIsWeb ? WebLandingPage() : PhoneRootPage(auth: widget.auth);
  }
}
