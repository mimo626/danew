import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/features/news/presentation/widgets/news_flash_container_widget.dart';
import 'package:danew/features/news/presentation/widgets/news_big_img_card_widget.dart';
import 'package:danew/features/news/presentation/widgets/news_small_img_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/globals/news_category.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/list_view_widget.dart';
import '../providers/newsListProvider.dart';
import 'news_title_widget.dart';

class HomeRecommendView extends ConsumerStatefulWidget {
  final List<String> categoryList;
  const HomeRecommendView({
    super.key, required this.categoryList
  });

  @override
  HomeRecommendViewState createState() => HomeRecommendViewState();
}

class HomeRecommendViewState extends ConsumerState<HomeRecommendView> {
  @override
  Widget build(BuildContext context) {
    // 카테고리 -> 영어로 바꿔서 api로 전달 후 뉴스 리스트 반환
    //TODO 나중에 카테고리 리스트로 수정
    final newsAsync = ref.watch(newsListProvider(NewsCategory.categoryKrToEn["정치"]!));

    return newsAsync.when(
        data: (newsList) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizedBox.h16SizedBox,
              NewsFlashContainer(newsTitle: "AI 챗봇, 병원 예약·진료 안내 서비스에 도입"),
              AppSizedBox.h12SizedBox,
              Padding(
                padding: AppPadding.h20v16Padding,
                child: Text("민주님을 위한 추천 뉴스", style: AppTextStyles.semiBold18,),
              ),
              // 뉴스 제목 리스트
              ListViewWidget(
                list: newsList.sublist(0,3),
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
                        newsData: newsList[3],
                      ),
                      AppSizedBox.w16SizedBox,
                      NewsBigImgCardWidget(
                        newsData: newsList[4],
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
                  list: newsList.sublist(5),
                  listLength: newsList.length-5,
                  listWidgetBuilder: (item) => NewsSmallImgCardWidget(item: item)
              ),
            ],
          ),
        ),
        loading: () => Center(child: const CircularProgressIndicator()),
        error: (err, _) => Text('에러 발생: $err'),
    );
  }
}