import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:danew/core/widgets/tab_widget.dart';
import 'package:danew/features/news/presentation/widgets/home_category_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CategoryPage extends ConsumerStatefulWidget {
  const CategoryPage({super.key});

  @override
  CategoryPageState createState() => CategoryPageState();
}

class CategoryPageState extends ConsumerState<CategoryPage> {
  final tabViews = Globals.newsCategoryKr.map((category) =>
      HomeCategoryTabView(category: category)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppbar(
        title: "카테고리",
        showNotificationIcon: true,
        showSearchIcon: true,
      ),
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
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
