import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/widgets/horizontal_list_view_widget.dart';
import 'package:danew/features/news/data/model/news_model.dart';
import 'package:danew/features/news/presentation/widgets/news_flash_container_widget.dart';
import 'package:danew/features/news/presentation/widgets/news_big_img_card_widget.dart';
import 'package:danew/features/news/presentation/widgets/news_small_img_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/globals/news_category.dart';
import '../../../../core/intl/date_formatter.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/divider_widget.dart';
import '../../../../core/widgets/list_view_widget.dart';
import '../providers/newsListProvider.dart';
import 'news_title_card_widget.dart';
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
              AppSizedBox.h12SizedBox,
              // 속보 뉴스
              CarouselSlider(
                options: CarouselOptions(
                  height: 50,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.vertical,
                ),
                items: newsList.sublist(0,3).map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: () => context.push("/newsDetail", extra: {"newsData": item}),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: AppColors.darkGreyColor,
                            ),
                            child: Padding(
                              padding: AppPadding.h20v8Padding,
                              child: Text(item.title!, style: AppTextStyles.medium16.copyWith(color: AppColors.whiteColor),
                                maxLines: 1, overflow: TextOverflow.ellipsis,),
                            )
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: AppPadding.h20v16Padding,
                child: Text("민주님을 위한 추천 뉴스", style: AppTextStyles.semiBold18,),
              ),
              // 뉴스 이미지 카드 리스트
              ListViewWidget(
                  list: newsList.sublist(5),
                  listLength: newsList.length-5,
                  listWidgetBuilder: (item) => NewsSmallImgCardWidget(item: item)
              ),
              DividerWidget(),
              Padding(
                padding: AppPadding.h20v16Padding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("현재 TOP 경제 뉴스", style: AppTextStyles.semiBold18,),
                    Row(
                      children: [
                        Text("전체보기", style: AppTextStyles.regular13.copyWith(color: AppColors.blueColor),),
                        AppSizedBox.w2SizedBox,
                        Icon(Icons.arrow_forward_ios_outlined, color: AppColors.blueColor, size: 12,)
                      ],
                    )
                  ],
                ),
              ),
              HorizontalListViewWidget(
                  list: newsList.sublist(5,8),
                  listLength: 3,
                  listWidgetBuilder: (item) => Padding(
                    padding: AppPadding.right8Padding,
                    child: NewsTitleCardWidget(newsModel: item),
                  ),
              ),
              // 뉴스 이미지 카드
              Padding(
                padding: AppPadding.h20v16Padding,
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
              DividerWidget(),
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

