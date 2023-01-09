import 'package:flutter/material.dart';

import '../../../size_config.dart';
import './setion_title.dart';
import './speacil_offer_card.dart';

class SpeacilOffer extends StatelessWidget {
  const SpeacilOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Speacil for you',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(15)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpeacilOfferCard(
                image: 'assets/images/Image Banner 2.png',
                category: 'SmartPhones',
                numOfBrands: 18,
                press: () {},
              ),
              SpeacilOfferCard(
                image: 'assets/images/Image Banner 3.png',
                category: 'Fashion',
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(width: getProportionalScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
