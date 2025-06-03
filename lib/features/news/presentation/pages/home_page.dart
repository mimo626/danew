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
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  final tabViews = Globals.newsCategoryKr.map((category) {
    if(category == "추천"){
      return HomeRecommendTabView(categoryList: ["정치, 경제"],);
    }else{
      return HomeCategoryTabView(category: category);
    }
  },).toList();

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
                tabTitles: Globals.newsCategoryKr,
                tabViews: tabViews,
              isScrollable: true,
            ),
          ),
        ],
      ),
    );
  }
}
