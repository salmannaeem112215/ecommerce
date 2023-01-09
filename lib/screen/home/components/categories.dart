import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);
  final List<Map<String, Object>> categories = [
    {
      "icon": "assets/icons/Flash Icon.svg",
      "text": "Flash Deal",
      "press": () {
        // print('Flash Deal');
      },
    },
    {
      "icon": "assets/icons/Bill Icon.svg",
      "text": "Bill",
      "press": () {
        // print('Bill Screen');
      },
    },
    {
      "icon": "assets/icons/Game Icon.svg",
      "text": "Game",
      "press": () {
        // print('Game Screen');
      },
    },
    {
      "icon": "assets/icons/Gift Icon.svg",
      "text": "Daily Gift",
      "press": () {
        // print('Dail Gift Screen');
      },
    },
    {
      "icon": "assets/icons/Discover.svg",
      "text": "More",
      "press": () {
        // print('Discover Screen');
      },
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"] as String,
            text: categories[index]["text"] as String,
            press: categories[index]["press"] as Function,
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: SizedBox(
        width: getProportionalScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionalScreenWidth(15)),
                decoration: BoxDecoration(
                  color: kCategoriesColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
