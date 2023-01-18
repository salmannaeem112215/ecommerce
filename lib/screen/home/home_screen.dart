import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/custom_bottom_nav_bar.dart';
import 'package:flutter_ecommerce/enums.dart';

import './components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
