import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:danew/core/widgets/custom_search_bar.dart';
import 'package:danew/core/widgets/tab_widget.dart';
import 'package:danew/features/news/presentation/widgets/home_recommend_tab_view.dart';
import 'package:danew/features/search/presentation/widgets/search_btn_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabViews = [
    HomeRecommendTabView(),
    const Center(child: Text('인기')),
    const Center(child: Text('정치')),
    const Center(child: Text('경제')),
    const Center(child: Text('엔터')),
    const Center(child: Text('세계')),
    const Center(child: Text('환경')),
    const Center(child: Text('스포츠')),
    const Center(child: Text('기술')),
    const Center(child: Text('음식')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppbar(
        showLogo: true,
        showNotificationIcon: true,
      ),
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          // 검색바
          Padding(
            padding: AppPadding.h20v8Padding,
            child: SearchBtnWidget(),
          ),
          // 뉴스 카테고리 탭
          Expanded(
            child: TabWidget(
                tabTitles: Globals.homeTab,
                tabViews: tabViews,
              isScrollable: true,
            ),
          ),
        ],
      ),
    );
  }
}
