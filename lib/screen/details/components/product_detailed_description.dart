import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/products.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDetailedDescription extends StatelessWidget {
  const ProductDetailedDescription({
    Key? key,
    required this.product,
    required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final Function pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionalScreenWidth(15)),
            width: getProportionalScreenWidth(64),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              color: product.isFavourite
                  ? const Color(0xFFFFE6E6)
                  : const Color(0xFFF5F6F9),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color: product.isFavourite
                  ? const Color(0xFFFF4848)
                  : const Color(0xFFD8DEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionalScreenWidth(20),
            right: getProportionalScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        GestureDetector(
          onTap: () => pressOnSeeMore(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionalScreenWidth(20),
                vertical: getProportionalScreenWidth(10)),
            child: Row(
              children: const [
                Text(
                  'See More Details',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kPrimaryColor,
                  size: 12,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
