import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.child,
    required this.isWhite,
  }) : super(key: key);
  final bool isWhite;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionalScreenWidth(20)),
      padding: EdgeInsets.only(top: getProportionalScreenWidth(20)),
      width: double.infinity,
      decoration: buildBoxDecoration(isWhite),
      child: child,
    );
  }

  BoxDecoration buildBoxDecoration(bool isWhite) {
    var borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(40),
      topRight: Radius.circular(40),
    );

    if (isWhite) {
      return BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
      );
    } else {
      return BoxDecoration(
        color: const Color(0xfff6f7f9),
        borderRadius: borderRadius,
      );
    }
  }
}
