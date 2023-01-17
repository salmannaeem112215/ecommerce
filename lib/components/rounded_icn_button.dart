import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class RoundedIcnButton extends StatelessWidget {
  const RoundedIcnButton({
    Key? key,
    required this.press,
    required this.icon,
  }) : super(key: key);
  final Function press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionalScreenWidth(40),
      width: getProportionalScreenWidth(40),
      child: TextButton(
        onPressed: () => press(),
        style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(getProportionalScreenWidth(40)))),
        child: Icon(icon, color: kTextColor),
      ),
    );
  }
}
