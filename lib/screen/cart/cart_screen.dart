import 'package:flutter/material.dart';

import './components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = '/cart';
  final int items = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '$items items',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
