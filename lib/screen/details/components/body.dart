import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/default_button.dart';
import 'package:flutter_ecommerce/components/rounded_icn_button.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/size_config.dart';

import '../../../models/products.dart';
import './product_images.dart';
import './top_rounded_container.dart';
import './product_detailed_description.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            isWhite: true,
            child: Column(
              children: [
                ProductDetailedDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  isWhite: false,
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        isWhite: true,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: getProportionalScreenWidth(20),
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            bottom: getProportionalScreenWidth(20),
                          ),
                          child:
                              DefaultButton(text: 'Add to cart', press: () {}),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDots extends StatefulWidget {
  const ColorDots({super.key, required this.product});

  final Product product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionalScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => ColorDot(
              color: widget.product.colors[index],
              isSelectedColor: selectedIndex == index,
              pressOnColorChange: () => setState(() {
                selectedIndex = index;
              }),
            ),
          ),
          const Spacer(),
          RoundedIcnButton(
            press: () {},
            icon: Icons.remove,
          ),
          const SizedBox(width: 5),
          RoundedIcnButton(
            press: () {},
            icon: Icons.add,
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.pressOnColorChange,
    required this.isSelectedColor,
  }) : super(key: key);

  final Color color;
  final Function pressOnColorChange;
  final bool isSelectedColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pressOnColorChange(),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: getProportionalScreenWidth(40),
        width: getProportionalScreenWidth(40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelectedColor ? kPrimaryColor : Colors.transparent),
        ),
        child: DecoratedBox(
            decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        )),
      ),
    );
  }
}
