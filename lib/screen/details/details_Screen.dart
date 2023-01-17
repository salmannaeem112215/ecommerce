import 'package:flutter/material.dart';

import '../../models/products.dart';
import './components/body.dart';
import './components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: arguments.product.rating),
      body: const Body(),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  const ProductDetailsArguments({required this.product});
}
