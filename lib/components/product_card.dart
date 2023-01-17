import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/products.dart';
import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.press,
  }) : super(key: key);

  final Product product;
  final double width, aspectRatio;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionalScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionalScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionalScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Text(
                        product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.price.toString(),
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: getProportionalScreenWidth(18),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // print('heart');
                          },
                          child: Container(
                            padding: EdgeInsets.all(
                              getProportionalScreenWidth(8),
                            ),
                            height: getProportionalScreenWidth(28),
                            width: getProportionalScreenWidth(28),
                            decoration: BoxDecoration(
                              color: kSecondaryColor.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/Heart Icon_2.svg',
                              color: product.isFavourite
                                  ? const Color(0xFFFF4848)
                                  : const Color(0xFFD8DEE4),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
