import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        height: 300.0,
        width: 224.0,
        decoration: BoxDecoration(
            color: Constants.backgroundColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(7.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Constants.blackColor,
                blurRadius: 15,
                spreadRadius: -18,
                offset: const Offset(0.0, 5),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 112.0,
                width: 192.0,
                child: Image.asset('assets/images/1.png'),
              ),
            ),
            const Gap(16.0),
            Text(
              'ویلا ۵۰۰ متری زیر قیمت',
              style: TextStyle(
                  fontFamily: 'ShabnamB',
                  fontSize: 14.0,
                  color: Constants.blackColor),
            ),
            const Gap(5.0),
            Text(
              'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
              style: TextStyle(
                  fontFamily: 'Shabnam',
                  fontSize: 12.0,
                  color: Constants.grayColor),
            ),
            const MaxGap(100.0),
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
    );
  }
}
