import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

class ProductAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {

    return Container(
        padding: const EdgeInsets.only(top: 15.0, bottom: 9.0),
        color: Constants.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/images/arrow-right.png')),
              const MaxGap(1000),
              Image.asset('assets/images/information.png'),
              const Gap(24.0),
              Image.asset('assets/images/share.png'),
              const Gap(24.0),
              Image.asset('assets/images/archive.png'),
            ],
          ),
        ));
  }

  @override

  double get maxExtent => 60.0;

  @override

  double get minExtent => 60.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
 
    return false;
  }
}
