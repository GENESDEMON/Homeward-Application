import 'package:flutter/material.dart';
import 'package:slinkshot_app/view/auth/landing.dart';
import 'package:slinkshot_app/view/auth/login.dart';

var routes = <String, WidgetBuilder>{
  '/splash': (BuildContext context) => new SplashScreen(),
  '/login': (BuildContext context) => new Login(),
};
