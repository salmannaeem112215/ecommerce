import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';
import '../../../theme.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AspectRatio(
            aspectRatio: 1,
            child: RiveAnimation.asset(
              "assets/rive/404.riv",
            ),
          ),
          const Text('Opps!', style: kLargeText),
          const Text(
            'Cart is Empty',
            style: kLargeText,
          ),
          const SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionalScreenWidth(40),
            ),
            child: DefaultButton(
              text: 'Let\'s Shop',
              press: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
