import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';

import '../../../size_config.dart';
import './home_header.dart';
import './discount_banner.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const DiscountBanner(),
          ],
        ),
      ),
    );
  }
}
