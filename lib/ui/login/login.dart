import 'package:divar/ui/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';
import '../utils/custom_elevated_button.dart';
import '../utils/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, top: 60.0, bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Row(
                  children: [
                    Text(
                      'ورود به',
                      style: TextStyle(
                          fontFamily: 'shabnamB',
                          color: Constants.blackColor,
                          fontSize: 16.0),
                    ),
                    const Gap(8.0),
                    Image.asset('assets/images/logo.png')
                  ],
                ),
                const Gap(16.0),
                // Text
                Text(
                  'خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی!',
                  style: TextStyle(
                      fontFamily: 'shabnamB',
                      color: Constants.grayColor,
                      fontSize: 14.0),
                ),
                const Gap(32.0),
                // CustomTextFormField
                const CustomTextFormField(
                  hintText: 'شماره موبایل',
                ),
                const Spacer(),
                // ElevatedButton
                const CustomElevatedButton(
                  elevatedButtonText: 'مرحله بعد',
                ),
                const Gap(16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'تاحالا ثبت نام نکردی؟',
                      style: TextStyle(
                          fontFamily: 'shabnam',
                          color: Constants.grayColor,
                          fontSize: 14.0),
                    ),
                    const Gap(5.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SignUpPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'ثبت نام',
                        style: TextStyle(
                            fontFamily: 'shabnam',
                            color: Constants.primaryColor,
                            fontSize: 14.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
