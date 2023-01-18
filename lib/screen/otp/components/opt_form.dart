import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce/screen/home/home_screen.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OPTForm extends StatefulWidget {
  const OPTForm({
    Key? key,
    required this.code,
  }) : super(key: key);
  final String code;

  @override
  State<OPTForm> createState() => _OPTFormState();
}

class _OPTFormState extends State<OPTForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  List<String> userCode = [' ', ' ', ' ', ' '];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                widget.code.length, (index) => buildCodeBlock(index)),
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          DefaultButton(
            text: 'Continue',
            press: confirmOtp,
          )
        ],
      ),
    );
  }

  void addError(String error) {
    setState(() {
      errors.add(error);
    });
  }

  void removeError(String error) {
    setState(() {
      errors.remove(error);
    });
  }

  void confirmOtp() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, HomeScreen.routeName);
    }
  }

  bool otpMatched() {
    String code = widget.code;
    for (int i = 0; i < code.length; i++) {
      if (code[i] != userCode[i]) {
        if (!errors.contains(kMatchingOTPError)) {
          addError(kMatchingOTPError);
        }
        return false;
      }
    }
    if (errors.contains(kMatchingOTPError)) removeError(kMatchingOTPError);
    return true;
  }

  SizedBox buildCodeBlock(int index) {
    return SizedBox(
      width: getProportionalScreenWidth(60),
      child: TextFormField(
        style: const TextStyle(fontSize: 24),
        onChanged: (value) {
          userCode[index] = value;
          if (value.isNotEmpty) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && index != 0) {
            FocusScope.of(context).previousFocus();
          }
          //caling automatically continue in case of correct;
          if (index == widget.code.length - 1) confirmOtp();
        },
        validator: (value) {
          if (otpMatched()) {
            return null;
          }
          return "";
        },
        obscureText: true,
        decoration: otpInputDecoration,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
