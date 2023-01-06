import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.press,
    required this.icon,
  }) : super(key: key);
  final Function press;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(10)),
        padding: EdgeInsets.all(getProportionalScreenWidth(12)),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xfff5f6f9),
        ),
        height: getProportionalScreenWidth(50),
        width: getProportionalScreenWidth(50),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
