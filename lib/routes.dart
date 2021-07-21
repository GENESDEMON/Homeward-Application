import 'package:flutter/material.dart';
import 'package:slinkshot_app/view/auth/landing.dart';
import 'package:slinkshot_app/view/auth/login.dart';
import 'package:slinkshot_app/view/tabs/home.dart';
import 'package:slinkshot_app/view/tabs/profile.dart';
import 'package:slinkshot_app/view/tabs/skins.dart';

import 'components/skin_details.dart';

var routes = <String, WidgetBuilder>{
  '/splash': (BuildContext context) => new SplashScreen(),
  '/login': (BuildContext context) => new Login(),
  '/home': (BuildContext context) => new Home(),
  '/profile': (BuildContext context) => new Profile(),
  '/skins': (BuildContext context) => new Skins(),
  '/skindetails': (BuildContext context) => new SkinDetails(),
};
