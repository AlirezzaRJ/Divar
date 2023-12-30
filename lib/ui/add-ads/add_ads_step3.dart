import 'package:divar/constants/constants.dart';
import 'package:divar/ui/add-ads/add_ads_step4.dart';
import 'package:divar/ui/utils/subject_text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';

class AddAdsPageStep3 extends StatefulWidget {
  const AddAdsPageStep3({super.key});

  @override
  State<AddAdsPageStep3> createState() => _AddAdsPageStep3State();
}

class _AddAdsPageStep3State extends State<AddAdsPageStep3> {
  bool status = false;
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
                  child: Image.asset('assets/images/arrow-right.png')),
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
                  icon: 'assets/images/map.png', text: 'موقعیت مکانی'),
              const Gap(16.0),
              Text(
                'بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما خفظ شود.',
                style: TextStyle(
                    fontFamily: 'shabnam',
                    fontSize: 14.0,
                    color: Constants.gray500),
              ),
              const Gap(50.0),
              Container(
                alignment: Alignment.center,
                height: 144,
                child: Stack(
                  children: [
                    Image.asset('assets/images/mapview.png'),
                    Positioned(
                      top: 50,
                      right: 55.0,
                      child: SizedBox(
                        height: 40.0,
                        width: 230.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Constants.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'گرگان، صیاد شیرا...',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.whiteColor,
                                    fontSize: 16.0),
                              ),
                              const MaxGap(50.0),
                              Image.asset('assets/images/location.png')
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Gap(32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'موقعیت دقیق نقشه نمایش داده شود؟',
                    style: TextStyle(
                        fontFamily: 'shabnamM',
                        color: Constants.blackColor,
                        fontSize: 16.0),
                  ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AddAdsPageStep4();
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
