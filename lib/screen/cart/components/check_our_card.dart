import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/default_button.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
    required this.total,
  }) : super(key: key);
  final double total;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionalScreenWidth(30),
        vertical: getProportionalScreenWidth(15),
      ),
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFDADADA).withOpacity(0.15),
            offset: const Offset(0, -15),
            blurRadius: 20,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: getProportionalScreenWidth(40),
                width: getProportionalScreenWidth(40),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset("assets/icons/receipt.svg"),
              ),
              const Spacer(),
              const Text('Add voucher code'),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: kTextColor,
              ),
            ],
          ),
          SizedBox(height: getProportionalScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Total\n',
                  children: [
                    TextSpan(
                      text: '\$${total.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: getProportionalScreenWidth(190),
                child: DefaultButton(text: 'Check Out', press: () {}),
              )
            ],
          )
        ],
      ),
    );
  }
}
