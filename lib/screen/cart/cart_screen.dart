import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/cart.dart';

import './components/body.dart';
import './components/check_our_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  static String routeName = '/cart';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int items = demoCart.length;
  void _removeCartItem(int index) {
    setState(() {
      demoCart.removeAt(index);
    });
  }

  double getTotal() {
    double total = 0;
    for (var p in demoCart) {
      total += p.product.price * p.noOfItems;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(
        removeCartItem: _removeCartItem,
      ),
      bottomNavigationBar: CheckOurCard(total: getTotal()),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    final int items = demoCart.length;
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
