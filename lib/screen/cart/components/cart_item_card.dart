import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/cart.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key, required this.cart});

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionalScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(11),
              decoration: BoxDecoration(
                color: const Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: getProportionalScreenWidth(375) -
              getProportionalScreenWidth(88 + 65),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                demoCart[0].product.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                    text: '\$${cart.product.price}',
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: ' x${cart.noOfItems}',
                        style: const TextStyle(
                          color: kTextColor,
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
