

import 'package:flutter/material.dart';

import '../home_page.dart';
import 'login.dart';
import 'register.dart';

class AppRoutes{
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String home = '/home';

  static Map<String, WidgetBuilder> define(){
    return {
      authLogin: (context) => WelcomeScreen(),
      authRegister: (context) => Register(),

      home: (context) => HomePage(),
    };
  }
}