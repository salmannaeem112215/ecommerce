import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/enums.dart';
import 'package:flutter_ecommerce/screen/home/home_screen.dart';
import 'package:flutter_ecommerce/screen/profhile/profhile_screen.dart';
import 'package:flutter_ecommerce/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xffb6b6b6);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: getProportionalScreenWidth(20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xffDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                if (MenuState.home == selectedMenu) return;
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {
                if (MenuState.favorite == selectedMenu) return;
              },
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                color: MenuState.favorite == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {
                if (MenuState.message == selectedMenu) return;
              },
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {
                if (MenuState.profhile == selectedMenu) return;
                Navigator.popAndPushNamed(context, ProfhileScreen.routeName);
              },
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profhile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
