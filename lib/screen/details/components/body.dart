import 'package:flutter/material.dart';

import '../../../models/products.dart';
import './product_images.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}
