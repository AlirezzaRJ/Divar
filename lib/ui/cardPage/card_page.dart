import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:gap/gap.dart';

import '../../constants/constants.dart';

import '../utils/cardpage_appbar.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> with TickerProviderStateMixin {
  int currentIndex = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavigationBar(),
        backgroundColor: Constants.backgroundColor,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: ProductAppBar(),
              ),
              const SliverGap(30.0),
              // card Image
              const CardImage(),
              const SliverGap(20.0),
              // Card Title
              const CardTitle(),
              const SliverGap(64.0),
              // Warning Tab
              const WarningTab(),
              const SliverGap(32.0),
// Tabar
              SliverToBoxAdapter(
                child: SizedBox(
                  width: size.width,
                  height: 34.0,
                  child: TabBar(
                    tabAlignment: TabAlignment.center,
                    controller: tabController,
                    isScrollable: true,
                    dividerColor: Constants.backgroundColor,
                    labelColor: Constants.whiteColor,
                    labelPadding: EdgeInsets.zero,
                    indicatorPadding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    splashBorderRadius:
                        const BorderRadius.all(Radius.circular(4.0)),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    labelStyle: const TextStyle(
                      fontFamily: 'Shabnam',
                      fontSize: 14.0,
                    ),
                    unselectedLabelColor: Constants.primaryColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        color: Constants.primaryColor,
                        borderRadius: BorderRadius.circular(4.0)),
                    tabs: [
                      Tab(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: Constants.primaryColor),
                          ),
                          child: const Text('مشخصات'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: Constants.primaryColor),
                          ),
                          child: const Text('قیمت'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: Constants.primaryColor),
                          ),
                          child: const Text('ویژگی ها و امکانات'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: Constants.primaryColor),
                          ),
                          child: const Text('توضیحات'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverGap(32.0),
              // Details Tab
              DetailsTab(size: size, tabController: tabController),
            ],
          ),
        ),
      ),
    );
  }
}

// Details Tab
class DetailsTab extends StatelessWidget {
  const DetailsTab({
    super.key,
    required this.size,
    required this.tabController,
  });

  final Size size;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: size.width,
        height: 630.0,
        child: TabBarView(controller: tabController, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 24.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(4.0),
                      border: Border.all(color: Constants.borderColor)),
                  height: 98.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'متراژ',
                            style: TextStyle(
                                fontFamily: 'shabnam',
                                fontSize: 14.0,
                                color: Constants.gray500),
                          ),
                          const MaxGap(50.0),
                          Text(
                            '500',
                            style: TextStyle(
                                fontFamily: 'shabnam',
                                fontSize: 14.0,
                                color: Constants.blackColor),
                          ),
                        ],
                      ),
                      Dash(
                          direction: Axis.vertical,
                          length: 45,
                          dashLength: 5,
                          dashColor: Constants.borderColor),
                      Column(
                        children: [
                          Text(
                            'اتاق',
                            style: TextStyle(
                                fontFamily: 'shabnam',
                                fontSize: 14.0,
                                color: Constants.gray500),
                          ),
                          const MaxGap(50.0),
                          Text(
                            '6',
                            style: TextStyle(
                                fontFamily: 'shabnam',
                                fontSize: 14.0,
                                color: Constants.blackColor),
                          ),
                        ],
                      ),
                      Dash(
                          direction: Axis.vertical,
                          length: 45,
                          dashLength: 5,
                          dashColor: Constants.borderColor),
                      Column(
                        children: [
                          Text(
                            'طبقه',
                            style: TextStyle(
                                fontFamily: 'shabnam',
                                fontSize: 14.0,
                                color: Constants.gray500),
                          ),
                          const MaxGap(50.0),
                          Text(
                            'دوبلکس',
                            style: TextStyle(
                                fontFamily: 'shabnam',
                                fontSize: 14.0,
                                color: Constants.blackColor),
                          ),
                        ],
                      ),
                      Dash(
                          direction: Axis.vertical,
                          length: 45,
                          dashLength: 5,
                          dashColor: Constants.borderColor),
                      Column(
                        children: [
                          Text(
                            'ساخت',
                            style: TextStyle(
                                fontFamily: 'shabnam',
                                fontSize: 14.0,
                                color: Constants.gray500),
                          ),
                          const MaxGap(50.0),
                          Text(
                            '۱۴۰۲',
                            style: TextStyle(
                                fontFamily: 'shabnam',
                                fontSize: 14.0,
                                color: Constants.blackColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(32.0),
                Row(
                  children: [
                    Image.asset('assets/images/map.png'),
                    const Gap(8.0),
                    Text(
                      'موقعیت مکانی',
                      style: TextStyle(
                          fontFamily: 'shabnamB',
                          fontSize: 16.0,
                          color: Constants.blackColor),
                    )
                  ],
                ),
                const Gap(16.0),
                Container(
                  alignment: Alignment.center,
                  height: 144,
                  child: Stack(
                    children: [
                      Image.asset('assets/images/mapview.png'),
                      Positioned(
                        top: 50,
                        right: 70.0,
                        child: SizedBox(
                          height: 40.0,
                          width: 220.0,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
                height: 96.0,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(4.0),
                          border: Border.all(color: Constants.borderColor)),
                      height: 98.0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'قیمت هر متر:',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.blackColor,
                                    fontSize: 16.0),
                              ),
                              Text(
                                '۴۶٬۴۶۰٬۰۰۰',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.blackColor,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'قیمت کل:',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.blackColor,
                                    fontSize: 16.0),
                              ),
                              Text(
                                '۲۳٬۲۳۰٬۰۰۰٬۰۰۰',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.blackColor,
                                    fontSize: 16.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
                height: 96.0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/clipboard.png'),
                        const Gap(8.0),
                        Text(
                          'ویژگی ها',
                          style: TextStyle(
                              fontFamily: 'shabnamB',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        )
                      ],
                    ),
                    const Gap(16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(4.0),
                          border: Border.all(color: Constants.borderColor)),
                      height: 98.0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'سند',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.blackColor,
                                    fontSize: 16.0),
                              ),
                              Text(
                                'تک برگ',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.blackColor,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'جهت ساختمان',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.blackColor,
                                    fontSize: 16.0),
                              ),
                              Text(
                                'شمالی',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.blackColor,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(32.0),
                    Row(
                      children: [
                        Image.asset('assets/images/clipboard.png'),
                        const Gap(8.0),
                        Text(
                          'ویژگی ها',
                          style: TextStyle(
                              fontFamily: 'shabnamB',
                              fontSize: 16.0,
                              color: Constants.blackColor),
                        )
                      ],
                    ),
                    const Gap(16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(4.0),
                          border: Border.all(color: Constants.borderColor)),
                      height: 392.0,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'آسانسور',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.gray500,
                                    fontSize: 16.0),
                              ),
                              const Spacer()
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                          Row(
                            children: [
                              Text(
                                'پارکینگ',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.gray500,
                                    fontSize: 16.0),
                              ),
                              const Spacer()
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                          Row(
                            children: [
                              Text(
                                'انباری',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.gray500,
                                    fontSize: 16.0),
                              ),
                              const Spacer()
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                          Row(
                            children: [
                              Text(
                                'بالکن',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.gray500,
                                    fontSize: 16.0),
                              ),
                              const Spacer()
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                          Row(
                            children: [
                              Text(
                                'پنت هاوس',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.gray500,
                                    fontSize: 16.0),
                              ),
                              const Spacer()
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                          Row(
                            children: [
                              Text(
                                'جنس کف سرامیک',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.gray500,
                                    fontSize: 16.0),
                              ),
                              const Spacer()
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                          Row(
                            children: [
                              Text(
                                'سرویس بهداشتی ایرانی و فرنگی',
                                style: TextStyle(
                                    fontFamily: 'shabnamM',
                                    color: Constants.gray500,
                                    fontSize: 16.0),
                              ),
                              const Spacer()
                            ],
                          ),
                          const MaxGap(16.0),
                          Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashLength: 4,
                              dashColor: Constants.borderColor),
                          const MaxGap(16.0),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
                height: 96.0,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(4.0),
                          border: Border.all(color: Constants.borderColor)),
                      height: 98.0,
                      child: Text(
                        'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.',
                        style: TextStyle(
                            fontFamily: 'shabnam',
                            color: Constants.gray500,
                            fontSize: 14.0),
                      ),
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}

// Warning Tab
class WarningTab extends StatelessWidget {
  const WarningTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          height: 45.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: Constants.borderColor, width: 1.5),
          ),
          child: Row(
            children: [
              Text(
                'هشدار های قبل از معامله! ',
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
      ),
    );
  }
}

// Card Title
class CardTitle extends StatelessWidget {
  const CardTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'آپارتمان',
                style: TextStyle(
                    fontFamily: 'shabnam',
                    fontSize: 14.0,
                    color: Constants.primaryColor),
              ),
              Text(
                '۱۶ دقیقه پیش در گرگان',
                style: TextStyle(
                    fontFamily: 'shabnam',
                    fontSize: 14.0,
                    color: Constants.gray500),
              ),
            ]),
            const Gap(24.0),
            Text(
              'آپارتمان ۵۰۰ متری در صیاد شیرازی',
              style: TextStyle(
                  fontFamily: 'shabnamB',
                  fontSize: 16.0,
                  color: Constants.blackColor),
            ),
          ],
        ),
      ),
    );
  }
}

// Card Image
class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Image.asset('assets/images/productimage.png'),
      ),
    );
  }
}

class TabInformation extends StatelessWidget {
  const TabInformation({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 98.0,
          width: size.width,
          decoration:
              BoxDecoration(border: Border.all(color: Constants.borderColor)),
          child: const Row(
            children: [
              Column(
                children: [],
              ),
              Column(
                children: [],
              ),
              Column(
                children: [],
              ),
              Column(
                children: [],
              )
            ],
          ),
        )
      ],
    );
  }
}

// TabBar View Delegate
class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color(0xff1c1f2e),
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => throw UnimplementedError();

  @override
  double get minExtent => throw UnimplementedError();

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    throw UnimplementedError();
  }
}

 // Bottom NavigationBar 
class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: BoxDecoration(
        color: Constants.backgroundColor,
      ),
      child: BottomAppBar(
        elevation: 0.0,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.0,
              width: 185.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/message.png'),
                    const Gap(12.0),
                    Text(
                      'گفتگو',
                      style: TextStyle(
                          fontFamily: 'shabnamM',
                          color: Constants.whiteColor,
                          fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            const MaxGap(100.0),
            SizedBox(
              height: 40.0,
              width: 185.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/call.png'),
                    const Gap(12.0),
                    Text(
                      'اطلاعات تماس',
                      style: TextStyle(
                          fontFamily: 'shabnamM',
                          color: Constants.whiteColor,
                          fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
