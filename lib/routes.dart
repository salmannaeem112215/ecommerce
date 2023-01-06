import 'package:flutter/material.dart';
import './screen/sign_in/sign_in_screen.dart';
import './screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
