import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:danew/core/widgets/tab_widget.dart';
import 'package:danew/features/news/data/datasources/news_api_service.dart';
import 'package:danew/features/news/presentation/widgets/home_category_tab_view.dart';
import 'package:danew/features/news/presentation/widgets/home_recommend_tab_view.dart';
import 'package:danew/features/search/presentation/widgets/search_btn_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabViews = Globals.homeTab.map((category) {
    if(category == "추천"){
      return HomeRecommendTabView();
    }else{
      return HomeCategoryTabView(category: category);
    }
  },).toList();
  final apiService = NewsApiService();

  Future<void> newsTest() async {
    await apiService.fetchNews("정치", ["business"]);
  }
  @override
  void initState() {
    super.initState();
    newsTest();
  }

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
