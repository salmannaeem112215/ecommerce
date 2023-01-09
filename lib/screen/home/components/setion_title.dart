import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionalScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Speacil for you",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionalScreenWidth(18),
            ),
          ),
          GestureDetector(
            onTap: press,
            child: const Text("See more"),
          ),
        ],
      ),
    );
  }
}
