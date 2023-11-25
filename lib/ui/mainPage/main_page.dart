import 'dart:ui';

import 'package:divar/ui/search/search_page.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../add-ads/add_ads_page.dart';
import '../home/home_page.dart';
import '../profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Constants.whiteColor,
        // body: WelcomePage(),
        body: IndexedStack(
          index: selectedBottomNavigationIndex,
          children: getScreens(),
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: BottomNavigationBar(
              onTap: (int index) {
                setState(
                  () {
                    selectedBottomNavigationIndex = index;
                  },
                );
              },
              currentIndex: selectedBottomNavigationIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedLabelStyle: TextStyle(
                  fontFamily: 'shabnamB',
                  fontSize: 10,
                  color: Constants.primaryColor),
              unselectedLabelStyle: const TextStyle(
                  fontFamily: 'shabnamB', fontSize: 10, color: Colors.black),
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/home-notactive.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Constants.primaryColor,
                                blurRadius: 20,
                                spreadRadius: -7,
                                offset: const Offset(0.0, 13),
                              )
                            ],
                          ),
                          child: Image.asset('assets/images/home-active.png')),
                    ),
                    label: 'آویز آگهی ها'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/search-notactive.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Constants.primaryColor,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: const Offset(0.0, 13),
                            )
                          ],
                        ),
                        child: Image.asset('assets/images/search-active.png'),
                      ),
                    ),
                    label: 'جستوجو'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/add-notactive.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Constants.primaryColor,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: const Offset(0.0, 13),
                            )
                          ],
                        ),
                        child: Image.asset('assets/images/add-active.png'),
                      ),
                    ),
                    label: 'افزودن آویز'),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/profile-notactive.png'),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Constants.primaryColor,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: const Offset(0.0, 13),
                            )
                          ],
                        ),
                        child: Image.asset('assets/images/profile-active.png'),
                      ),
                    ),
                    label: 'آویز من'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> getScreens() {
  return <Widget>[
    const HomePage(),
    const SearchPage(),
    const AddAdsPage(),
    const ProfilePage(),
  ];
}
