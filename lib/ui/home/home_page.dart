import 'package:divar/ui/cardPage/card_page.dart';
import 'package:divar/ui/utils/card_box_horizontal.dart';
import 'package:divar/ui/utils/homepage_appbar.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

import '../utils/card_box_vertical.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomScrollView(
            slivers: [
              // App Bar
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: HomePageAppBar(),
              ),
              // Title List(1)
              const GetCategoryTitle(),
              // CardItemVertical list(1)
              const GetCardItemVertical(),
              // Title List(2)
              const GetCategoryTitle2(),
              // CardItemHorizontal list(2)
              const GetCardItemHorizontal(),
            ],
          ),
        ),
      ),
    );
  }
}

// ListView.builder | CardItemVertical list(1)
class GetCardItemVertical extends StatelessWidget {
  const GetCardItemVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 300.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 17,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CardPage();
                    },
                  ),
                );
              },
              child: const CardItemVertizal()),
        ),
      ),
    );
  }
}

// ListView.builder | CardItemHorizontal list(2)
class GetCardItemHorizontal extends StatelessWidget {
  const GetCardItemHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 18,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CardPage();
                  },
                ),
              );
            },
            child: const CardItemHorizontal()),
      ),
    );
  }
}

// Title | CardItemVertical list(1)
class GetCategoryTitle extends StatelessWidget {
  const GetCategoryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 23.0, right: 23.0, bottom: 20, top: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'آویز های داغ',
              style: TextStyle(
                  fontFamily: 'shabnamB',
                  fontSize: 16,
                  color: Constants.blackColor),
            ),
            Row(
              children: [
                Text(
                  'مشاهده همه',
                  style: TextStyle(
                      fontFamily: 'shabnamB',
                      fontSize: 14.0,
                      color: Constants.numberverifytextfieldColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Title | CardItemHorizontal list(2)
class GetCategoryTitle2 extends StatelessWidget {
  const GetCategoryTitle2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 23.0, right: 23.0, bottom: 20, top: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'آویز های اخیر',
              style: TextStyle(
                  fontFamily: 'shabnamB',
                  fontSize: 16,
                  color: Constants.blackColor),
            ),
            Row(
              children: [
                Text(
                  'مشاهده همه',
                  style: TextStyle(
                      fontFamily: 'shabnamB',
                      fontSize: 14.0,
                      color: Constants.numberverifytextfieldColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
