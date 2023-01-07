import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import './opt_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  final String number = '03004432369';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text('OTP Verification', style: headingStyle),
              Text('We have send your code to ${getDecodedNumber(number)}'),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              const OPTForm(
                code: '0000',
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              GestureDetector(
                onTap: () {
                  // Resend OTP
                },
                child: const Text(
                  'Resend OTP Code',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This Code will expire in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${getDigit(value.toString())}",
            style: const TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }

  String getDecodedNumber(String num) {
    String decodeNum = '+92 ${num[1]}${num[2]}${num[3]}';
    int index = 4;
    for (; index < num.length - 2; index++) {
      decodeNum += '*';
    }
    decodeNum += num[index++] + num[index];
    return decodeNum;
  }

  String getDigit(String num) {
    int val = double.parse(num).toInt();
    if (val < 10) return '0$val';
    return '$val';
  }
}
