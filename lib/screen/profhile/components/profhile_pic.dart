import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfhilePic extends StatelessWidget {
  const ProfhilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      width: 145,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            child: Image.asset("assets/images/Profile Image.png"),
          ),
          Positioned(
            bottom: 0,
            right: -10,
            child: SizedBox(
              height: 48,
              width: 48,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xfff5f6f9),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
