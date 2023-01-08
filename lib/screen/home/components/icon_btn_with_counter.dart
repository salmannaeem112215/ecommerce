import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class IcnBtnWithCounter extends StatelessWidget {
  const IcnBtnWithCounter({
    Key? key,
    required this.count,
    required this.svgIcon,
    required this.press,
  }) : super(key: key);
  final String count;
  final String svgIcon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press(),
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 46,
            width: 46,
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SvgPicture.asset(svgIcon),
          ),
          if (count != '0')
            Positioned(
              right: 0,
              top: -3,
              child: Container(
                alignment: Alignment.center,
                height: 20,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  count,
                  style: const TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            )
        ],
      ),
    );
  }
}
