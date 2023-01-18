import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/products.dart';
import 'package:flutter_ecommerce/screen/details/details_screen.dart';

import '../../../size_config.dart';
import '../../../components/product_card.dart';
import './section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Popular Products', press: () {}),
        SizedBox(height: getProportionateScreenHeight(15)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(
                        context,
                        DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(
                            product: demoProducts[index]),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              SizedBox(width: getProportionalScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
