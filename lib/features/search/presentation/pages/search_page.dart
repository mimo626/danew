import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/widgets/app_bar/search_app_bar.dart';
import 'package:danew/features/search/presentation/widgets/recent_search_word_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/list_view_widget.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: SearchBarAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppPadding.h20v16Padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("최근 검색어", style: AppTextStyles.semiBold16,),
                  InkWell(
                    onTap: () {},
                    child: Text("전체 삭제", style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),),
                  ),
                ],
              ),
            ),
            ListViewWidget(
              list: Globals.recentSearchWordData,
              listLength: Globals.recentSearchWordData.length,
              listWidgetBuilder: (item) => RecentSearchWordWidget(item: item),
            ),
          ],
        ),
      ),
    );
  }
}
