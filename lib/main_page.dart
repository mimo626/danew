import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/colors.dart';
import 'package:danew/features/bookmark/presentation/pages/bookmark_page.dart';
import 'package:danew/features/news/presentation/pages/home_page.dart';
import 'package:danew/features/search/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: Globals.navItems.length, vsync: this,);
    _tabController.addListener(tabListener);
  }

  @override
  void dispose() {
    _tabController.removeListener(tabListener);
    super.dispose();
  }

  void tabListener() {
    setState(() {
      _selectedIndex = _tabController.index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: Globals.navItems.map((item) {
          return BottomNavigationBarItem(
              icon: item.icon,
              activeIcon: item.activeIcon,
              label: item.label
          );
        }).toList(),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed, // 아이콘과 텍스트가 항상 함께 보임
        selectedFontSize: 12,
        onTap: _onItemTapped,
        backgroundColor: AppColors.whiteColor,
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          HomePage(),
          SearchPage(),
          Center(child: Text('기록')),
          BookmarkPage(),
          Center(child: Text('마이페이지')),
        ],
      ),
    );
  }
}
