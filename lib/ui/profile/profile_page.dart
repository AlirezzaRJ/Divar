import 'package:divar/ui/utils/search_box.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

import '../utils/profile_appbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: CustomeAppBar2(),
                ),
                const SliverToBoxAdapter(
                  child: SearchBox(),
                ),
                const SliverGap(20.0),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      Image.asset('assets/images/profile-title.png'),
                      const Gap(8.0),
                      Text(
                        'حساب کاربری',
                        style: TextStyle(
                            fontFamily: 'shabnamB',
                            fontSize: 16.0,
                            color: Constants.blackColor),
                      )
                    ],
                  ),
                ),
                const SliverGap(20),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    height: 95.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Constants.borderColor, width: 1.5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60.0,
                          width: 60.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(23.0),
                            child: Image.asset('assets/images/Afarin.png'),
                          ),
                        ),
                        const Gap(16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'بچه مردم مقدم بهرآبادی',
                              style: TextStyle(
                                  fontFamily: 'shabnamM',
                                  fontSize: 14.0,
                                  color: Constants.blackColor),
                            ),
                            const MaxGap(20.0),
                            Row(
                              children: [
                                Text(
                                  '09123456789',
                                  style: TextStyle(
                                      fontFamily: 'shabnamM',
                                      fontSize: 14.0,
                                      color: Constants.blackColor),
                                ),
                                const Gap(8.0),
                                Container(
                                  alignment: Alignment.center,
                                  height: 26,
                                  width: 66,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    color: Constants.primaryColor,
                                  ),
                                  child: Text(
                                    'تایید شده',
                                    style: TextStyle(
                                        fontFamily: 'shabnamM',
                                        fontSize: 12.0,
                                        color: Constants.whiteColor),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Image.asset('assets/images/edit.png'),
                      ],
                    ),
                  ),
                ),
                const SliverGap(30.0),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Constants.borderColor, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/note-2.png'),
                        const Gap(12.0),
                        Text(
                          'آگهی های من',
                          style: TextStyle(
                              fontFamily: 'shabnamM',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Constants.numberverifytextfieldColor,
                        )
                      ],
                    ),
                  ),
                ),
                const SliverGap(16.0),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Constants.borderColor, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/card.png'),
                        const Gap(12.0),
                        Text(
                          'پرداخت های من',
                          style: TextStyle(
                              fontFamily: 'shabnamM',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Constants.numberverifytextfieldColor,
                        )
                      ],
                    ),
                  ),
                ),
                const SliverGap(16.0),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Constants.borderColor, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/eye.png'),
                        const Gap(12.0),
                        Text(
                          'بازدید های اخیر',
                          style: TextStyle(
                              fontFamily: 'shabnamM',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Constants.numberverifytextfieldColor,
                        )
                      ],
                    ),
                  ),
                ),
                const SliverGap(16.0),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Constants.borderColor, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/save-2.png'),
                        const Gap(12.0),
                        Text(
                          'ذخیره شده ها',
                          style: TextStyle(
                              fontFamily: 'shabnamM',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Constants.numberverifytextfieldColor,
                        )
                      ],
                    ),
                  ),
                ),
                const SliverGap(16.0),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Constants.borderColor, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/setting.png'),
                        const Gap(12.0),
                        Text(
                          'تنظیمات',
                          style: TextStyle(
                              fontFamily: 'shabnamM',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Constants.numberverifytextfieldColor,
                        )
                      ],
                    ),
                  ),
                ),
                const SliverGap(16.0),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Constants.borderColor, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/message-question.png'),
                        const Gap(12.0),
                        Text(
                          'پشتیبانی و قوانین',
                          style: TextStyle(
                              fontFamily: 'shabnamM',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Constants.numberverifytextfieldColor,
                        )
                      ],
                    ),
                  ),
                ),
                const SliverGap(16.0),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Constants.borderColor, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/info-circle.png'),
                        const Gap(12.0),
                        Text(
                          'درباره آویز',
                          style: TextStyle(
                              fontFamily: 'shabnamM',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Constants.numberverifytextfieldColor,
                        )
                      ],
                    ),
                  ),
                ),
                const SliverGap(10.0),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Text(
                        'نسخه',
                        style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14.0,
                            color: Constants.numberverifytextfieldColor),
                      ),
                      Text(
                        '1.5.9',
                        style: TextStyle(
                            fontFamily: 'shabnam',
                            fontSize: 14.0,
                            color: Constants.numberverifytextfieldColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
