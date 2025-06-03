import 'package:danew/core/globals/news_data.dart';
import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/theme/text_styles.dart';
import 'package:danew/core/widgets/button/bookmark_toggle_btn.dart';
import 'package:danew/core/widgets/button/share_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';

class NewsDetailPage extends ConsumerStatefulWidget {
  final NewsData newsData;
  const NewsDetailPage({super.key, required this.newsData});

  @override
  NewsDetailPageState createState() => NewsDetailPageState();
}

class NewsDetailPageState extends ConsumerState<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: PrimaryAppbar(),
      body: Padding(
        padding: AppPadding.h20Padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizedBox.h16SizedBox,
            Container(
              decoration: BoxDecoration(
                color: AppColors.tertiaryColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: AppPadding.h12v6Padding,
                child: Text(widget.newsData.category, style: AppTextStyles.medium14.copyWith(color: AppColors.primaryColor),),
              ),
            ),
            AppSizedBox.h12SizedBox,
            Text(widget.newsData.newsTitle, style: AppTextStyles.medium18,),
            AppSizedBox.h12SizedBox,
            Text(widget.newsData.pubDate, style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),),
            AppSizedBox.h4SizedBox,
            Text("${widget.newsData.creator} 기자", style: AppTextStyles.medium14),
            AppSizedBox.h16SizedBox,
            Row(
              children: [
                Spacer(),
                BookmarkToggleBtn(),
                AppSizedBox.w16SizedBox,
                ShareBtnWidget()
              ],
            ),
            AppSizedBox.h16SizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("AI 뉴스 요약본", style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),),
                InkWell(
                  onTap: () {

                  },
                  child: Text("뉴스 원문 보기", style: AppTextStyles.medium14.copyWith(
                      color: AppColors.greyColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.greyColor
                    ),
                  ),
                )
              ],
            ),
            AppSizedBox.h12SizedBox,
            Text(widget.newsData.newsContent, style: AppTextStyles.medium16,),
            AppSizedBox.h16SizedBox,
            Image.asset(
              widget.newsData.imgUrl,
              height: 250,
            )
          ],
        ),
      ),
    );
  }
}
