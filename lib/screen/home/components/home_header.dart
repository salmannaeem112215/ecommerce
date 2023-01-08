import 'package:flutter/material.dart';

import './search_field.dart';
import './icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SearchField(),
        IcnBtnWithCounter(
          count: '0',
          svgIcon: 'assets/icons/Cart Icon.svg',
          press: () {},
        ),
        IcnBtnWithCounter(
          count: "3",
          svgIcon: 'assets/icons/Bell.svg',
          press: () {},
        ),
      ],
    );
  }
}
