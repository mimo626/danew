import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/text_styles.dart';

class ScrollableTabWidget extends StatefulWidget {
  final List<String> tabTitles;
  final List<Widget> tabViews;

  const ScrollableTabWidget({
    super.key,
    required this.tabTitles,
    required this.tabViews,
  }) : assert(tabTitles.length == tabViews.length, '탭 제목과 내용의 길이가 일치해야 합니다.');

  @override
  State<ScrollableTabWidget> createState() => _ScrollableTabWidgetState();
}

class _ScrollableTabWidgetState extends State<ScrollableTabWidget> with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabTitles.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          onTap:  (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          isScrollable: true,
          tabs: widget.tabTitles.map((title) => Tab(text: title)).toList(),
          labelColor: AppColors.blackColor,
          labelStyle: AppTextStyles.medium15,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: AppColors.blackColor,
          unselectedLabelColor: AppColors.greyColor,
          unselectedLabelStyle: AppTextStyles.medium15,
          tabAlignment: TabAlignment.start,
          //labelPadding: AppPadding.h16Padding,
          //padding: AppPadding.h20Padding,
          dividerColor: Colors.transparent,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.tabViews,
          ),
        ),
      ],
    );
  }
}
