import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screen/complete_profhile/complete_profhile.dart';

import '../../../components/custom_suffix_icond.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String confirm = "";
  List<String> errors = [];

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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfirmFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(
                      context, CompleteProfhileScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        suffixIcon: CustomeSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          addError(kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          addError(kInvalidEmailError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        suffixIcon: CustomeSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        password = value;
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          removeError(kPassNullError);
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          removeError(kShortPassError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          addError(kPassNullError);
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          addError(kShortPassError);
          return "";
        }
        password = value;
        return null;
      },
    );
  }

  TextFormField buildConfirmFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        suffixIcon: CustomeSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      onSaved: (newValue) => confirm = newValue!,
      onChanged: (value) {
        confirm = value;
        if (confirm == password && errors.contains(kMatchingPassError)) {
          removeError(kMatchingPassError);
        }
      },
      validator: (value) {
        confirm = value!;
        if (value.isEmpty) {
          return "";
        } else if (confirm != password &&
            !errors.contains(kMatchingPassError)) {
          addError(kMatchingPassError);
          return "";
        }
        return null;
      },
    );
  }
}
