import 'package:flutter/material.dart';

class AppKey extends NavigatorState {
  static GlobalKey<ScaffoldMessengerState>? scaffoldKey = GlobalKey(debugLabel: "app_key");
}
