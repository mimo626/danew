import 'package:danew/core/globals/news_category.dart';
import 'package:danew/features/news/data/model/news_model.dart';
import 'package:danew/features/news/presentation/providers/newsListProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/list_view_widget.dart';
import '../../data/datasources/news_api_service.dart';
import 'news_big_img_card_widget.dart';
import 'news_small_img_card_widget.dart';
import 'news_title_widget.dart';

class HomeCategoryTabView extends ConsumerStatefulWidget {
  final String category;

  const HomeCategoryTabView({
    super.key,
    required this.category
  });

  @override
  HomeCategoryTabViewState createState() => HomeCategoryTabViewState();
}

class HomeCategoryTabViewState extends ConsumerState<HomeCategoryTabView> {

  @override
  Widget build(BuildContext context) {
    // 카테고리 -> 영어로 바꿔서 api로 전달 후 뉴스 리스트 반환
    final newsAsync = ref.watch(newsListProvider(NewsCategory.categoryKrToEnTranslate(widget.category)));

    return newsAsync.when(
        data: (newsList) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizedBox.h12SizedBox,
              Padding(
                padding: AppPadding.h20v16Padding,
                child: Text("실시간 ${widget.category} 뉴스", style: AppTextStyles.semiBold18,),
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
                child: Text("지금 HOT한 ${widget.category} 뉴스", style: AppTextStyles.semiBold18,),
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
