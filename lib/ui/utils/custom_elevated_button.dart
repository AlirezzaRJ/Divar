import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';
import '../OTP/OTP.dart';

class CustomElevatedButton extends StatelessWidget {
  final String elevatedButtonText;
  const CustomElevatedButton({
    super.key,
    required this.elevatedButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 382,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Constants.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const OtpPage();
                },
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                elevatedButtonText,
                style: TextStyle(
                    fontFamily: 'shabnam',
                    color: Constants.whiteColor,
                    fontSize: 16.0),
              ),
              const Gap(12.0),
              Image.asset('assets/images/arrow-left.png'),
              // Icon(
              //   Icons.arrow_forward_ios_rounded,
              //   color: Constants.whiteColor,
              //   size: 24.0,
              // )
            ],
          )),
    );
  }
}
