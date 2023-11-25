import 'package:divar/ui/OTP/OTP.dart';
import 'package:divar/ui/login/login.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

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
                Text(
                  'این فوق العادست که آویزو برای آگهی هات انتخاب کردی!',
                  style: TextStyle(
                      fontFamily: 'shabnamB',
                      color: Constants.grayColor,
                      fontSize: 14.0),
                ),
                const Gap(32.0),
                TextFormField(
                  // controller: controller,
                  // textDirection: textDirection,
                  keyboardType: TextInputType.text,
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
                    hintText: 'نام و نام خانوادگی',
                    hintStyle: TextStyle(
                      fontFamily: 'shabnam',
                      fontSize: 16.0,
                      color: Constants.textfieldColor,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10.0),
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
                ),
                const Gap(24.0),
                TextFormField(
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
                    hintText: 'شماره موبایل',
                    hintStyle: TextStyle(
                      fontFamily: 'shabnam',
                      fontSize: 16.0,
                      color: Constants.textfieldColor,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10.0),
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
                ),
                const Spacer(),
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
                              return const OtpPage();
                            },
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'مرحله بعد',
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
