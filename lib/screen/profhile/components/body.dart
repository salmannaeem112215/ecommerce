import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import './profhile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ProfhilePic(),
          const SizedBox(height: 20),
          ProfhileMenu(
            icon: 'assets/icons/User Icon.svg',
            text: 'My Account',
            press: () {},
          ),
          ProfhileMenu(
            icon: 'assets/icons/Bell.svg',
            text: 'Notifications',
            press: () {},
          ),
          ProfhileMenu(
            icon: 'assets/icons/Settings.svg',
            text: 'Settings',
            press: () {},
          ),
          ProfhileMenu(
            icon: 'assets/icons/Question mark.svg',
            text: 'Help Center',
            press: () {},
          ),
          ProfhileMenu(
            icon: 'assets/icons/Log out.svg',
            text: 'Log Out',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ProfhileMenu extends StatelessWidget {
  const ProfhileMenu({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: const Color(0xfff5f6f9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kPrimaryColor,
            ),
            const SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText2,
            )),
            const Icon(Icons.arrow_forward_ios, color: kTextColor),
          ],
        ),
      ),
    );
  }
}
