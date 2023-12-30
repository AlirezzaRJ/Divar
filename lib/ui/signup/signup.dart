import 'package:divar/ui/login/login.dart';
import 'package:divar/ui/utils/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';
import '../utils/custom_elevated_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                Row(
                  children: [
                    // Title
                    Text(
                      'خوش اومدی به',
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
                  'این فوق العادست که آویزو برای آگهی هات انتخاب کردی!',
                  style: TextStyle(
                      fontFamily: 'shabnamB',
                      color: Constants.grayColor,
                      fontSize: 14.0),
                ),
                const Gap(32.0),
                // CustomTextFormField (1)
                const CustomTextFormField(hintText: 'نام و نام خانوادگی'),
                const Gap(24.0),
                // CustomTextFormField (2)
                const CustomTextFormField(hintText: 'شماره موبایل'),
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
                      'قبلا ثبت نام کردی؟ ',
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
                              return const LoginPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'ورود',
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
