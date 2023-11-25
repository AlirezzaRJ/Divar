import 'package:divar/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductItem2 extends StatefulWidget {
  const ProductItem2({super.key});

  @override
  State<ProductItem2> createState() => _ProductItem2State();
}

class _ProductItem2State extends State<ProductItem2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Constants.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Constants.blackColor,
              blurRadius: 18,
              spreadRadius: -18,
              offset: const Offset(0.0, 5),
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
        height: 139.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 107.0,
              width: 220.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'واحد دوبلکس فول امکانات',
                    style: TextStyle(
                        fontFamily: 'ShabnamB',
                        fontSize: 14.0,
                        color: Constants.blackColor),
                  ),
                  const Gap(8.0),
                  Text(
                    'سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل',
                    style: TextStyle(
                        fontFamily: 'Shabnam',
                        fontSize: 12.0,
                        color: Constants.gray500),
                  ),
                  const Gap(16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'قیمت:',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'shabnamB',
                            color: Constants.blackColor),
                      ),
                      Text(
                        '25,683,000,000',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'shabnamB',
                            color: Constants.primaryColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/2.png')
          ],
        ),
      ),
    );
  }
}
