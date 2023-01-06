import 'package:flutter/material.dart';

import './components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Success'),
        leading: const SizedBox(),
      ),
      body: const Body(),
    );
  }
}
