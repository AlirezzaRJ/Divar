import 'package:divar/ui/login/login.dart';
import 'package:divar/ui/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/constants.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // Page Controller
  final PageController _pageController = PageController(initialPage: 0);
  // Page index
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.whiteColor,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 56.0),
          child: Stack(
            children: [
              PageView(
                onPageChanged: (int page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                controller: _pageController,
                // WelcomePage Content
                children: const [
                  WelcomePageContent(),
                  WelcomePageContent(),
                  WelcomePageContent(),
                ],
              ),
              // indicator & Bottons
              constantView(context)
            ],
          ),
        ),
      ),
    );
  }

  // indicator & Bottons
  Padding constantView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 600.0, left: 16.0, right: 16.0),
      child: Center(
        child: Column(
          children: [
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                expansionFactor: 4,
                dotHeight: 6,
                dotWidth: 6,
                dotColor: Constants.gray500,
                activeDotColor: Constants.primaryColor,
              ),
            ),
            const MaxGap(500.0),
            Row(
              children: [
                SizedBox(
                  height: 55,
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Constants.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ));
                      });
                    },
                    child: Text(
                      'ثبت نام',
                      style: TextStyle(
                        fontFamily: 'shabnamB',
                        fontSize: 16,
                        color: Constants.whiteColor,
                      ),
                    ),
                  ),
                ),
                const MaxGap(100.0),
                SizedBox(
                  height: 55,
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Constants.whiteColor,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Constants.primaryColor, width: 1.8),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      });
                    },
                    child: Text(
                      'ورود',
                      style: TextStyle(
                        fontFamily: 'shabnamB',
                        fontSize: 16,
                        color: Constants.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Content
class WelcomePageContent extends StatelessWidget {
  const WelcomePageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(100.0),
        SizedBox(
          height: 280.0,
          child: Stack(children: [
            Image.asset('assets/images/pattern.png'),
            Positioned(
              right: 90,
              child: Image.asset('assets/images/welcomepage.png'),
            ),
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'اینجا محل',
              style: TextStyle(
                  fontFamily: 'shabnamB',
                  fontSize: 20.0,
                  color: Constants.blackColor),
            ),
            const Gap(8.0),
            Image.asset('assets/images/appbar.png'),
            const Gap(8.0),
            Text(
              'آگهی شماست',
              style: TextStyle(
                  fontFamily: 'shabnamB',
                  fontSize: 20.0,
                  color: Constants.blackColor),
            ),
          ],
        ),
        const Gap(16.0),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              textAlign: TextAlign.center,
              'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید',
              style: TextStyle(
                fontFamily: 'shabnamM',
                fontSize: 14.0,
                color: Constants.gray500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
