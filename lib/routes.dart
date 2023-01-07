import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screen/login_success/login_success_screen.dart';
import 'package:flutter_ecommerce/screen/sign_up/sign_up_screen.dart';

import './screen/forget_password/forget_password_screen.dart';
import './screen/sign_in/sign_in_screen.dart';
import './screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgetPasswordScreen.routeName: (context) => const ForgetPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
