import 'package:divar/constants/constants.dart';
import 'package:divar/ui/BottomNavigationBar/bottomnavigationbar_page.dart';
import 'package:divar/ui/utils/subject_text_row.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';

class AddAdsPageStep4 extends StatefulWidget {
  const AddAdsPageStep4({super.key});

  @override
  State<AddAdsPageStep4> createState() => _AddAdsPageStep4State();
}

class _AddAdsPageStep4State extends State<AddAdsPageStep4> {
  bool status = false;
  bool status2 = false;
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
                  icon: 'assets/images/camera.png', text: 'تصویر آویز'),
              const Gap(26.0),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(4.0),
                dashPattern: const [5, 5],
                color: Constants.textfieldColor,
                strokeWidth: 1.0,
                child: Container(
                  width: 500,
                  height: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Constants.backgroundColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'لطفا تصویر آویز خود را بارگذاری کنید',
                        style: TextStyle(
                            fontFamily: 'shabnamM',
                            fontSize: 14.0,
                            color: Constants.gray500),
                      ),
                      const Gap(16.0),
                      SizedBox(
                        height: 40,
                        width: 185,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Constants.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/document-upload.png'),
                              const Gap(16.0),
                              Text(
                                'انتخاب تصویر',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.whiteColor,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Gap(32.0),
              const SubjectTextRow(
                  icon: 'assets/images/edit-2.png', text: 'عنوان آویز'),
              const Gap(20.0),
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
                  hintText: 'عنوان آویز را وارد کنید',
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
              const Gap(32.0),
              const SubjectTextRow(
                  icon: 'assets/images/clipboard-text.png', text: 'توضیحات'),
              const Gap(20.0),
              TextFormField(
                textAlignVertical: TextAlignVertical.top,
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
                  hintText: 'توضیحات آویز را وارد کنید ...',
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
              const Gap(32.0),
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
                      'فعال کردن گفتگو',
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
                    ),
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
                      'فعال کردن تماس',
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
                    ),
                  ],
                ),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const CustomBottomNavigationBar();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'ثبت آگهی',
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
