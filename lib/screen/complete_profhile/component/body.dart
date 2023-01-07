import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/size_config.dart';

import './complete_profhile_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                Text(
                  'Complete Profhile',
                  style: headingStyle,
                ),
                const Text(
                  'Complete your details or Continue \nwith social accounts',
                  textAlign: TextAlign.center,
                ),
                const CompleteProfhileForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                const Text(
                  'By Continuing you confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
