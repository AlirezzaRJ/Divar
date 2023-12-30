import 'package:divar/constants/constants.dart';
import 'package:divar/ui/add-ads/add_ads_step3.dart';
import 'package:divar/ui/utils/subject_text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';

class AddAdsPageStep2 extends StatefulWidget {
  const AddAdsPageStep2({super.key});

  @override
  State<AddAdsPageStep2> createState() => _AddAdsPageStep2State();
}

class _AddAdsPageStep2State extends State<AddAdsPageStep2> {
  bool status = false;
  bool status2 = false;
  bool status3 = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Constants.backgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('assets/images/arrow-right.png'),
              ),
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
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/images/close-square.png')),
            ],
          ),
        ),
        backgroundColor: Constants.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 36.0, bottom: 36.0),
          child: Column(
            children: [
              const SubjectTextRow(
                  icon: 'assets/images/category-2.png',
                  text: 'انتخاب دسته بندی آویز'),
              const Gap(25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'انتخاب دسته بندی آویز',
                        style: TextStyle(
                            fontFamily: 'shabnamM',
                            fontSize: 14.0,
                            color: Constants.gray500),
                      ),
                      const Gap(16.0),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        height: 48.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                              color: Constants.borderColor, width: 1.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'فروش آپارتمان',
                              style: TextStyle(
                                  fontFamily: 'shabnamM',
                                  fontSize: 16.0,
                                  color: Constants.blackColor),
                            ),
                            Image.asset('assets/images/arrow-down.png')
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'محدوده ملک',
                        style: TextStyle(
                            fontFamily: 'shabnamM',
                            fontSize: 14.0,
                            color: Constants.gray500),
                      ),
                      const Gap(16.0),
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          height: 48.0,
                          width: 180.0,
                          decoration: BoxDecoration(
                            color: Constants.fieldColor,
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(
                                color: Constants.borderColor, width: 1.5),
                          ),
                          child: Text(
                            'خیابان صیاد شیرازی',
                            style: TextStyle(
                                fontFamily: 'shabnamB',
                                fontSize: 16.0,
                                color: Constants.textfieldColor),
                          ))
                    ],
                  )
                ],
              ),
              const Gap(25.0),
              const SubjectTextRow(
                  icon: 'assets/images/clipboard.png', text: 'ویژگی ها'),
              const Gap(25.0),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'متراژ',
                            style: TextStyle(
                                fontFamily: 'shabnamM',
                                fontSize: 14.0,
                                color: Constants.gray500),
                          ),
                          const Gap(16.0),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 8.0),
                            height: 48.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Constants.fieldColor,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                  color: Constants.borderColor, width: 1.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  '۳۵۰',
                                  style: TextStyle(
                                      fontFamily: 'shabnamM',
                                      fontSize: 16.0,
                                      color: Constants.blackColor),
                                ),
                                Image.asset('assets/images/Frame 45.png'),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'تعداد اتاق',
                            style: TextStyle(
                                fontFamily: 'shabnamM',
                                fontSize: 14.0,
                                color: Constants.gray500),
                          ),
                          const Gap(16.0),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 8.0),
                            height: 48.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Constants.fieldColor,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                  color: Constants.borderColor, width: 1.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  '6',
                                  style: TextStyle(
                                      fontFamily: 'shabnamM',
                                      fontSize: 16.0,
                                      color: Constants.blackColor),
                                ),
                                Image.asset('assets/images/Frame 45.png'),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Gap(20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'طبقه',
                            style: TextStyle(
                                fontFamily: 'shabnamM',
                                fontSize: 14.0,
                                color: Constants.gray500),
                          ),
                          const Gap(16.0),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 8.0),
                            height: 48.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Constants.fieldColor,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                  color: Constants.borderColor, width: 1.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  '3',
                                  style: TextStyle(
                                      fontFamily: 'shabnamM',
                                      fontSize: 16.0,
                                      color: Constants.blackColor),
                                ),
                                Image.asset('assets/images/Frame 45.png'),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'سال ساخت',
                            style: TextStyle(
                                fontFamily: 'shabnamM',
                                fontSize: 14.0,
                                color: Constants.gray500),
                          ),
                          const Gap(16.0),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 8.0),
                            height: 48.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Constants.fieldColor,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                  color: Constants.borderColor, width: 1.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  '1402',
                                  style: TextStyle(
                                      fontFamily: 'shabnamM',
                                      fontSize: 16.0,
                                      color: Constants.blackColor),
                                ),
                                Image.asset('assets/images/Frame 45.png'),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const Gap(25.0),
              const SubjectTextRow(
                  icon: 'assets/images/magicpen.png', text: 'امکانات'),
              const Gap(20.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(color: Constants.borderColor, width: 1.5),
                ),
                child: Row(
                  children: [
                    Text(
                      'آسانسور',
                      style: TextStyle(
                          fontFamily: 'shabnamM',
                          fontSize: 16.0,
                          color: Constants.blackColor),
                    ),
                    const Spacer(),
                    FlutterSwitch(
                      value: status,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                      width: 25.0,
                      padding: 4.0,
                      height: 16.30,
                      borderRadius: 15.0,
                      activeColor: Constants.primaryColor,
                      toggleColor: Constants.whiteColor,
                      inactiveColor: Constants.textfieldColor,
                      toggleSize: 10.0,
                    )
                  ],
                ),
              ),
              const Gap(15.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(color: Constants.borderColor, width: 1.5),
                ),
                child: Row(
                  children: [
                    Text(
                      'پارکینگ',
                      style: TextStyle(
                          fontFamily: 'shabnamM',
                          fontSize: 16.0,
                          color: Constants.blackColor),
                    ),
                    const Spacer(),
                    FlutterSwitch(
                      value: status2,
                      onToggle: (val) {
                        setState(() {
                          status2 = val;
                        });
                      },
                      width: 25.0,
                      padding: 4.0,
                      height: 16.30,
                      borderRadius: 15.0,
                      activeColor: Constants.primaryColor,
                      toggleColor: Constants.whiteColor,
                      inactiveColor: Constants.textfieldColor,
                      toggleSize: 10.0,
                    )
                  ],
                ),
              ),
              const Gap(15.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(color: Constants.borderColor, width: 1.5),
                ),
                child: Row(
                  children: [
                    Text(
                      'انباری',
                      style: TextStyle(
                          fontFamily: 'shabnamM',
                          fontSize: 16.0,
                          color: Constants.blackColor),
                    ),
                    const Spacer(),
                    FlutterSwitch(
                      value: status3,
                      onToggle: (val) {
                        setState(() {
                          status3 = val;
                        });
                      },
                      width: 25.0,
                      padding: 4.0,
                      height: 16.30,
                      borderRadius: 15.0,
                      activeColor: Constants.primaryColor,
                      toggleColor: Constants.whiteColor,
                      inactiveColor: Constants.textfieldColor,
                      toggleSize: 10.0,
                    ),
                  ],
                ),
              ),
              const MaxGap(100.0),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AddAdsPageStep3();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'بعدی',
                    style: TextStyle(
                        fontFamily: 'shabnamM',
                        color: Constants.whiteColor,
                        fontSize: 16.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
