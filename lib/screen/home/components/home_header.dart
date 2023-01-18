import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/cart.dart';
import 'package:flutter_ecommerce/screen/cart/cart_screen.dart';
import 'package:flutter_ecommerce/screen/profhile/profhile_screen.dart';
import 'package:flutter_ecommerce/size_config.dart';

import './search_field.dart';
import './icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IcnBtnWithCounter(
            count: demoCart.length.toString(),
            svgIcon: 'assets/icons/Cart Icon.svg',
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IcnBtnWithCounter(
            count: "3",
            svgIcon: 'assets/icons/Bell.svg',
            press: () => Navigator.pushNamed(context, ProfhileScreen.routeName),
          ),
        ],
      ),
    );
  }
}
