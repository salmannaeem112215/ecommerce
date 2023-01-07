import 'package:flutter/material.dart';

import './component/body.dart';

class CompleteProfhileScreen extends StatelessWidget {
  const CompleteProfhileScreen({Key? key}) : super(key: key);
  static String routeName = '/complete_profhile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const Body(),
    );
  }
}
