import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/core/resource/colors.dart';
import 'package:food/core/resource/fonts.dart';
import 'package:food/core/resource/icons.dart';
import 'package:food/presentation/main/pages/home/home_page.dart';
import 'package:food/presentation/main/pages/order/order_page.dart';
import 'package:food/presentation/main/pages/profile/profile_page.dart';
import 'package:food/presentation/main/pages/search/search_page.dart';
import 'package:food/presentation/main/pages/update/update_page.dart';
import '../../../../core/translations/l10n.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    OrderPage(),
    UpdatePage(),
    ProfilePage()
  ];
  int currentIndex = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedLabelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: kPrimaryColor,
              fontSize: 11,
              fontFamily: fontKoHoSemiBold,
            ),
        unselectedLabelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: const Color(0xFF5C616F),
              fontSize: 11,
              fontFamily: fontKoHoSemiBold,
            ),
        items: [
          BottomNavigationBarItem(
              label: S.of(context).tb_home,
              icon: SvgPicture.asset(kTabHomeUnActivated),
              activeIcon: SvgPicture.asset(kTabHomeActivated)),
          BottomNavigationBarItem(
              label: S.of(context).tb_search,
              icon: SvgPicture.asset(kTabSearchUnActivated),
              activeIcon: SvgPicture.asset(kTabSearchActivated)),
          BottomNavigationBarItem(
              label: S.of(context).tb_order,
              icon: SvgPicture.asset(kTabOrderUnActivated),
              activeIcon: SvgPicture.asset(kTabOrderActivated)),
          BottomNavigationBarItem(
              label: S.of(context).tb_update,
              icon: SvgPicture.asset(kTabUpdateUnActivated),
              activeIcon: SvgPicture.asset(kTabUpdateActivated)),
          BottomNavigationBarItem(
              label: S.of(context).tb_profile,
              icon: SvgPicture.asset(kTabProfileUnActivated),
              activeIcon: SvgPicture.asset(kTabProfileActivated))
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
            controller.jumpToPage(currentIndex);
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
