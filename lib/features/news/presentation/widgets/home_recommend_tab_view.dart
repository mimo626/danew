import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/features/news/presentation/widgets/news_flash_container_widget.dart';
import 'package:danew/features/news/presentation/widgets/news_big_img_card_widget.dart';
import 'package:danew/features/news/presentation/widgets/news_small_img_card_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/list_view_widget.dart';
import 'news_title_widget.dart';

class HomeRecommendTabView extends StatefulWidget {
  const HomeRecommendTabView({super.key});

  @override
  State<HomeRecommendTabView> createState() => _HomeRecommendTabViewState();
}

class _HomeRecommendTabViewState extends State<HomeRecommendTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewsFlashContainer(newsTitle: "AI 챗봇, 병원 예약·진료 안내 서비스에 도입"),
          AppSizedBox.h12SizedBox,
          Padding(
            padding: AppPadding.h20v16Padding,
            child: Text("민주님을 위한 추천 뉴스", style: AppTextStyles.semiBold18,),
          ),
          // 뉴스 제목 리스트
          ListViewWidget(
            list: Globals.newsTitleData,
            listLength: Globals.NewsTItleDataLength,
            listWidgetBuilder: (item) => NewsTitleWidget(item: item),
          ),
          // 뉴스 이미지 카드
          Padding(
            padding: AppPadding.h20v12Padding,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NewsBigImgCardWidget(
                      newsData: Globals.newsBigImgCardData[0],
                  ),
                  AppSizedBox.w16SizedBox,
                  NewsBigImgCardWidget(
                    newsData: Globals.newsBigImgCardData[1],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: AppPadding.h20v16Padding,
            child: Text("실시간 맞춤 뉴스", style: AppTextStyles.semiBold18,),
          ),
          // 뉴스 이미지 카드 리스트
          ListViewWidget(
              list: Globals.newsSmallImgCardData,
              listLength: Globals.newsSmallImgCardDataLength,
              listWidgetBuilder: (item) => NewsSmallImgCardWidget(item: item)
          ),
        ],
      ),
    );
  }
}