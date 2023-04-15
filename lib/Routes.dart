import 'package:flutter/material.dart';
import 'package:tide/views/login/Login.dart';

import 'views/home/home.dart';
import 'views/homepage/bottombar.dart';
import 'views/profile/profile.dart';

class Routes {
  static const String home = '/home';
  static const String profile = '/profile';
  static const String login = '/login';
  static const String myhomepage = '/myhomepage';
  
  // thêm các đường dẫn khác ở đây

  static Map<String, Widget Function(BuildContext)> get routes => {
    home: (context) => Home(),
    profile: (context) => const Profile(),
    login: (context) => LoginPage(),
    myhomepage: (context) => const MyHomePage(),


    // thêm các routes khác ở đây
  };
}