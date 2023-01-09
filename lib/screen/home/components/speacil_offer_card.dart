import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpeacilOfferCard extends StatelessWidget {
  const SpeacilOfferCard({
    Key? key,
    required this.numOfBrands,
    required this.press,
    required this.category,
    required this.image,
  }) : super(key: key);
  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionalScreenWidth(20)),
      child: SizedBox(
        width: getProportionalScreenWidth(242),
        height: getProportionalScreenWidth(100),
        child: GestureDetector(
          onTap: press,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionalScreenWidth(15),
                    vertical: getProportionalScreenWidth(10),
                  ),
                  child: Text.rich(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '$category\n',
                          style: TextStyle(
                            fontSize: getProportionalScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: '${numOfBrands.toString()} brands'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
