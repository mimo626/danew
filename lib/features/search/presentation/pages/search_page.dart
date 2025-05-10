import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/widgets/app_bar/search_app_bar.dart';
import 'package:danew/features/search/presentation/widgets/recent_search_word_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            RecentSearchWordList(),
          ],
        ),
      ),
    );
  }
}
