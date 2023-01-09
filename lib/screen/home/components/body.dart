import 'package:flutter/material.dart';

import '../../../size_config.dart';
import './home_header.dart';
import './discount_banner.dart';
import './categories.dart';
import 'speacil_offer.dart';

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
            SizedBox(height: getProportionateScreenHeight(20)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const SpeacilOffer(),
          ],
        ),
      ),
    );
  }
}
