import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/widgets/news_img_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/news_title_list.dart';

class HomeRecommendTabView extends StatefulWidget {
  const HomeRecommendTabView({super.key});

  @override
  State<HomeRecommendTabView> createState() => _HomeRecommendTabViewState();
}

class _HomeRecommendTabViewState extends State<HomeRecommendTabView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration:
            BoxDecoration(
              color: AppColors.blackColor.withOpacity(0.7)
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: AppPadding.v12Padding,
            child: Text(
              "오세훈 서울 시장 대권 도전하겠다... 공식 출마 선언",
              style: AppTextStyles.medium14.copyWith(color: AppColors.whiteColor),
            ),
          ),
        ),
        AppSizedBox.h12SizedBox,
        Padding(
          padding: AppPadding.h20v16Padding,
          child: Text("민주님을 위한 추천 뉴스", style: AppTextStyles.semiBold16,),
        ),
        // 뉴스 제목 리스트
        NewsTitleList(newList: Globals.titleNewsData,),
        Padding(
          padding: AppPadding.h20v12Padding,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NewsImgCard(
                    imgRoute: Globals.newsImgCardData[0].imgRoute,
                    newsTitle: Globals.newsImgCardData[0].newsTitle
                ),
                AppSizedBox.w16SizedBox,
                NewsImgCard(
                    imgRoute: Globals.newsImgCardData[1].imgRoute,
                    newsTitle: Globals.newsImgCardData[1].newsTitle
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}