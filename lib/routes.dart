import 'package:flutter/material.dart';

import './screen/complete_profhile/complete_profhile.dart';
import './screen/login_success/login_success_screen.dart';
import './screen/otp/otp_screen.dart';
import './screen/sign_up/sign_up_screen.dart';
import './screen/forget_password/forget_password_screen.dart';
import './screen/sign_in/sign_in_screen.dart';
import './screen/splash/splash_screen.dart';
import './screen/details/details_Screen.dart';
import './screen/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgetPasswordScreen.routeName: (context) => const ForgetPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfhileScreen.routeName: (context) => const CompleteProfhileScreen(),
  OTPScreen.routeName: (context) => const OTPScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
};
