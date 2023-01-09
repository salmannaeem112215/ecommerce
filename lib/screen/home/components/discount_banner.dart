import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: getProportionalScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionalScreenWidth(20),
        vertical: getProportionateScreenHeight(15),
      ),
      decoration: BoxDecoration(
        color: kDiscountCardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(
          text: 'A Summer Surprise\n',
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: 'Cashbask 20%',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
