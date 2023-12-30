import 'package:divar/ui/utils/search_box.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

import '../utils/profile_appbar.dart';
import '../utils/profile_page_container.dart';
import '../utils/subject_text_row.dart';

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
                // AppBar
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: ProfileAppBar(),
                ),
                // SearchBox
                const SliverToBoxAdapter(
                  child: SearchBox(),
                ),
                const SliverGap(20.0),
              // Subject Text
                const SliverToBoxAdapter(
                  child: SubjectTextRow(
                    icon: 'assets/images/profile-title.png',
                    text: 'حساب کاربری',
                  ),
                ),
                const SliverGap(20),
                // Account Info Container
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
                // ProfilePageContainer
                const ProfilePageContainer(
                  icon: 'assets/images/note-2.png',
                  text: 'آگهی های من',
                ),
                const SliverGap(16.0),
                const ProfilePageContainer(
                    icon: 'assets/images/card.png', text: 'پرداخت های من'),

                const SliverGap(16.0),
                const ProfilePageContainer(
                    icon: 'assets/images/eye.png', text: 'بازدید های اخیر'),

                const SliverGap(16.0),
                const ProfilePageContainer(
                    icon: 'assets/images/save-2.png', text: 'ذخیره شده ها'),

                const SliverGap(16.0),
                const ProfilePageContainer(
                    icon: 'assets/images/setting.png', text: 'تنظیمات'),

                const SliverGap(16.0),
                const ProfilePageContainer(
                    icon: 'assets/images/message-question.png',
                    text: 'پشتیبانی و قوانین'),

                const SliverGap(16.0),
                const ProfilePageContainer(
                    icon: 'assets/images/info-circle.png', text: 'درباره آویز'),

                const SliverGap(10.0),
                // Version Text
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
