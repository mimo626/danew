import 'package:flutter/material.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/list_view_widget.dart';
import 'news_big_img_card_widget.dart';
import 'news_small_img_card_widget.dart';
import 'news_title_widget.dart';

class HomeCategoryTabView extends StatefulWidget {
  final String category;

  const HomeCategoryTabView({
    super.key,
    required this.category
  });

  @override
  State<HomeCategoryTabView> createState() => _HomeCategoryTabViewState();
}

class _HomeCategoryTabViewState extends State<HomeCategoryTabView> {

  // 카테고리 -> 영어로 바꿔서 api로 전달 후 뉴스 리스트 반환

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            child: Text("지금 HOT한 ${widget.category} 뉴스", style: AppTextStyles.semiBold18,),
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
