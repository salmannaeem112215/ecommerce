import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/models/products.dart';
import 'package:flutter_ecommerce/size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key, required this.product});

  final Product product;
  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionalScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: getProportionalScreenWidth(20)),
                ...List.generate(widget.product.images.length,
                    (index) => buildSmallPreview(index)),
                SizedBox(width: getProportionalScreenWidth(5)),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildSmallPreview(int i) {
    return GestureDetector(
      onTap: () => setState(() {
        selectedImage = i;
      }),
      child: Container(
        margin: EdgeInsets.only(right: getProportionalScreenWidth(15)),
        padding: EdgeInsets.all(getProportionalScreenWidth(8)),
        height: getProportionalScreenWidth(48),
        width: getProportionalScreenWidth(48),
        decoration: BoxDecoration(
          border: Border.all(
            color: (selectedImage == i) ? kPrimaryColor : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(widget.product.images[i]),
      ),
    );
  }
}
