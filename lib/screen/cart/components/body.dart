import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/cart.dart';
import '../../../size_config.dart';
import './cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
          child: ListView.builder(
            itemCount: demoCart.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                key: Key(demoCart[index].product.id.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xffffe6e6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Spacer(),
                        SvgPicture.asset("assets/icons/Trash.svg"),
                      ],
                    )),
                onDismissed: (direction) {
                  setState(() {
                    demoCart.removeAt(index);
                  });
                },
                child: CartItemCard(cart: demoCart[index]),
              ),
            ),
          )),
    );
  }
}
