import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/colors.dart';
import '../theme/text_styles.dart';

class TabWidget extends ConsumerStatefulWidget {
  final List<String> tabTitles;
  final List<Widget> tabViews;
  final bool isScrollable;
  final bool isIndicatorSizeLabel;

  const TabWidget({
    super.key,
    required this.tabTitles,
    required this.tabViews,
    required this.isScrollable,
    this.isIndicatorSizeLabel = true,
  }) : assert(tabTitles.length == tabViews.length, '탭 제목과 내용의 길이가 일치해야 합니다.');

  @override
  TabWidgetState createState() => TabWidgetState();
}

class TabWidgetState extends ConsumerState<TabWidget> with TickerProviderStateMixin {
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
        DefaultTabController(
          length: widget.tabTitles.length,
          initialIndex: selectedIndex,
          child: TabBar(
            controller: _tabController,
            onTap:  (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            isScrollable: widget.isScrollable,
            tabs: widget.tabTitles.map((title) => Tab(text: title)).toList(),
            labelColor: AppColors.blackColor,
            labelStyle: AppTextStyles.medium15,
            indicatorSize: widget.isIndicatorSizeLabel ? TabBarIndicatorSize.label : TabBarIndicatorSize.tab,
            indicatorColor: AppColors.blackColor,
            unselectedLabelColor: AppColors.greyColor,
            unselectedLabelStyle: AppTextStyles.medium15,
            tabAlignment: widget.isScrollable ? TabAlignment.start :TabAlignment.fill,
            dividerColor: AppColors.lightGreyColor,
          ),
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
