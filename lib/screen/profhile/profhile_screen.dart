import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/enums.dart';

import '../../components/custom_bottom_nav_bar.dart';
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
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.profhile,
      ),
    );
  }
}
