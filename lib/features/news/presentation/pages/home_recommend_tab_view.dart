import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/features/news/presentation/widgets/news_flash_container.dart';
import 'package:danew/features/news/presentation/widgets/news_img_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../widgets/news_title_list.dart';

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
        NewsFlashContainer(newsTitle: "AI 챗봇, 병원 예약·진료 안내 서비스에 도입"),
        AppSizedBox.h12SizedBox,
        Padding(
          padding: AppPadding.h20v16Padding,
          child: Text("민주님을 위한 추천 뉴스", style: AppTextStyles.semiBold16,),
        ),
        // 뉴스 제목 리스트
        NewsTitleList(newList: Globals.titleNewsData,),
        // 뉴스 이미지 카드
        Padding(
          padding: AppPadding.h20v12Padding,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NewsImgCard(
                    imgRoute: Globals.newsImgCardData[0].imgRoute,
                    newsTitle: Globals.newsImgCardData[0].newsTitle,
                  onTap: () {},
                ),
                AppSizedBox.w16SizedBox,
                NewsImgCard(
                    imgRoute: Globals.newsImgCardData[1].imgRoute,
                    newsTitle: Globals.newsImgCardData[1].newsTitle,
                  onTap: () {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}