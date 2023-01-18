import 'package:flutter/material.dart';

import '../../../models/cart.dart';
import './components/body.dart';
import './components/check_our_card.dart';
import './components/empty_cart.dart';

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
      items = demoCart.length;
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
      body: (demoCart.isNotEmpty)
          ? Body(removeCartItem: _removeCartItem)
          : const EmptyCart(),
      bottomNavigationBar: (demoCart.isNotEmpty)
          ? CheckOurCard(total: getTotal())
          : const SizedBox(),
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
