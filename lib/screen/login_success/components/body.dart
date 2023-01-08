import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screen/home/home_screen.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset("assets/images/success.png"),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionalScreenWidth(28),
            color: Colors.black,
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: 'Back to Home',
            press: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
      ],
    );
  }
}
