import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/default_button.dart';
import 'package:flutter_ecommerce/components/form_error.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/screen/otp/otp_screen.dart';
import 'package:flutter_ecommerce/size_config.dart';

import '../../../components/custom_suffix_icond.dart';

class CompleteProfhileForm extends StatefulWidget {
  const CompleteProfhileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfhileForm> createState() => _CompleteProfhileFormState();
}

class _CompleteProfhileFormState extends State<CompleteProfhileForm> {
  final _formKey = GlobalKey<FormState>();
  String first = "";
  String last = "";
  String phone = "";
  String address = "";
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
          SizedBox(height: getProportionateScreenHeight(30)),
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {
                  // optp screen
                  Navigator.pushNamed(context, OTPScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first fame',
        suffixIcon: CustomeSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => first = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kFirstNameNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kFirstNameNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        suffixIcon: CustomeSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => last = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kLastNameNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kLastNameNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        suffixIcon: CustomeSuffixIcon(svgIcon: 'assets/icons/Phone.svg'),
      ),
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phone = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kPhoneNumberNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        suffixIcon:
            CustomeSuffixIcon(svgIcon: 'assets/icons/Location point.svg'),
      ),
      keyboardType: TextInputType.streetAddress,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kAddressNullError);
          return "";
        }
        return null;
      },
    );
  }
}
