// ignore_for_file: file_names


import 'package:divar/ui/mainPage/main_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:divar/constants/constants.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 60.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.start,
                'تایید شماره موبایل',
                style: TextStyle(
                    fontFamily: 'shabnamB',
                    fontSize: 16.0,
                    color: Constants.blackColor),
              ),
              const Gap(16.0),
              Text(
                textAlign: TextAlign.start,
                'کد ورود پیامک شده را وارد کنید',
                style: TextStyle(
                    fontFamily: 'shabnam',
                    fontSize: 14.0,
                    color: Constants.gray500),
              ),
              const Gap(32.0),
              OTPTextField(
                controller: otpController,
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 80,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16.0),
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                outlineBorderRadius: 4.0,
                otpFieldStyle: OtpFieldStyle(
                    disabledBorderColor: Constants.fieldColor,
                    backgroundColor: Constants.fieldColor,
                    borderColor: Constants.fieldColor,
                    enabledBorderColor: Constants.fieldColor,
                    focusBorderColor: Constants.primaryColor),
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MainPage();
                      },
                    ),
                  );
                },
              ),
              const Gap(35.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '۰۰:۴۵',
                    style: TextStyle(
                        fontFamily: 'shabnamB',
                        fontSize: 18.0,
                        color: Constants.blackColor),
                  ),
                  const Gap(5.0),
                  Text(
                    'ارسال مجدد کد',
                    style: TextStyle(
                        fontFamily: 'shabnamM',
                        fontSize: 14.0,
                        color: Constants.gray500),
                  ),
                ],
              ),
              const MaxGap(1000.0),
              SizedBox(
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
                          return const MainPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'تایید ورود',
                    style: TextStyle(
                        fontFamily: 'shabnam',
                        color: Constants.whiteColor,
                        fontSize: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
