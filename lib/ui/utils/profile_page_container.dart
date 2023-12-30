import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

class ProfilePageContainer extends StatelessWidget {
  final String icon;
  final String text;
  const ProfilePageContainer({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        height: 45.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Constants.borderColor, width: 1.5),
        ),
        child: Row(
          children: [
            Image.asset(icon),
            const Gap(12.0),
            Text(
              text,
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
    );
  }
}
