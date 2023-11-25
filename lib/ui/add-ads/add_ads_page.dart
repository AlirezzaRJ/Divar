import 'package:divar/constants/constants.dart';
import 'package:divar/ui/add-ads/add_ads_step2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddAdsPage extends StatefulWidget {
  const AddAdsPage({super.key});

  @override
  State<AddAdsPage> createState() => _AddAdsPageState();
}

class _AddAdsPageState extends State<AddAdsPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Constants.backgroundColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/arrow-right.png'),
                Row(
                  children: [
                    Text(
                      'دسته بندی',
                      style: TextStyle(
                        fontFamily: 'shabnam',
                        fontSize: 16.0,
                        color: Constants.primaryColor,
                      ),
                    ),
                    Image.asset('assets/images/aviz.png'),
                  ],
                ),
                Image.asset('assets/images/close-square.png'),
              ],
            ),
          ),
          backgroundColor: Constants.backgroundColor,
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 36.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AddAdsPageStep2();
                        },
                      ),
                    );
                  },
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
                        Text(
                          'اجاره مسکونی',
                          style: TextStyle(
                              fontFamily: 'shabnamM',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Constants.primaryColor,
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(16.0),
                Container(
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
                      Text(
                        'فروش مسکونی',
                        style: TextStyle(
                            fontFamily: 'shabnamM',
                            fontSize: 16.0,
                            color: Constants.blackColor),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Constants.primaryColor,
                      )
                    ],
                  ),
                ),
                const Gap(16.0),
                Container(
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
                      Text(
                        'فروش دفاتر اداری و تجاری',
                        style: TextStyle(
                            fontFamily: 'shabnamM',
                            fontSize: 16.0,
                            color: Constants.blackColor),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Constants.primaryColor,
                      )
                    ],
                  ),
                ),
                const Gap(16.0),
                Container(
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
                      Text(
                        'اجاره دفاتر اداری و تجاری',
                        style: TextStyle(
                            fontFamily: 'shabnamM',
                            fontSize: 16.0,
                            color: Constants.blackColor),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Constants.primaryColor,
                      )
                    ],
                  ),
                ),
                const Gap(16.0),
                Container(
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
                      Text(
                        'اجاره کوتاه مدت',
                        style: TextStyle(
                            fontFamily: 'shabnamM',
                            fontSize: 16.0,
                            color: Constants.blackColor),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Constants.primaryColor,
                      )
                    ],
                  ),
                ),
                const Gap(16.0),
                Container(
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
                      Text(
                        'پروژه های ساخت و ساز',
                        style: TextStyle(
                            fontFamily: 'shabnamM',
                            fontSize: 16.0,
                            color: Constants.blackColor),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Constants.primaryColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
