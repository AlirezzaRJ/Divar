import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

class SubjectTextRow extends StatelessWidget {
  final String icon;
  final String text;
  const SubjectTextRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon),
        const Gap(8.0),
        Text(
          text,
          style: TextStyle(
              fontFamily: 'shabnamB',
              fontSize: 16.0,
              color: Constants.blackColor),
        )
      ],
    );
  }
}
