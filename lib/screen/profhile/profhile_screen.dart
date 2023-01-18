import 'package:flutter/material.dart';

import './components/body.dart';

class ProfhileScreen extends StatelessWidget {
  const ProfhileScreen({super.key});
  static String routeName = '/profhile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profhile'),
      ),
      body: const Body(),
    );
  }
}
