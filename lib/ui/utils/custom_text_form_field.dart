import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  const CustomTextFormField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      // textDirection: textDirection,
      keyboardType: TextInputType.phone,
      cursorColor: Constants.primaryColor,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontFamily: 'shabnamB',
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
        filled: true,
        fillColor: Constants.fieldColor,
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'shabnam',
          fontSize: 16.0,
          color: Constants.textfieldColor,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(
            color: Constants.fieldColor,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(
            color: Constants.textfieldColor,
            width: 2.0,
          ),
        ),
      ),
      style: TextStyle(
        fontFamily: 'shabnamB',
        fontSize: 14.0,
        color: Constants.blackColor,
      ),
      // validator: validator,
    );
  }
}
