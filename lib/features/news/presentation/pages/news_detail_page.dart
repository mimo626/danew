import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/globals/news_category.dart';
import 'package:danew/core/intl/date_formatter.dart';
import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/theme/text_styles.dart';
import 'package:danew/core/widgets/button/bookmark_toggle_btn.dart';
import 'package:danew/core/widgets/button/share_btn_widget.dart';
import 'package:danew/features/news/data/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';

class NewsDetailPage extends ConsumerStatefulWidget {
  final NewsModel newsData;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.h20Padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizedBox.h16SizedBox,
              Wrap(
                spacing: 8,
                children: widget.newsData.category.map((item) =>
                    Container(
                      padding: AppPadding.h12v6Padding,
                      decoration: BoxDecoration(
                        color: AppColors.fortyColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                          NewsCategory.categoryEnToKr[item] ?? Globals.otherCategoryKr,
                          style: AppTextStyles.semiBold16.copyWith(color: AppColors.primaryColor)
                      ),
                    )
                ).toList(),
              ),
              AppSizedBox.h12SizedBox,
              Text(widget.newsData.title!, style: AppTextStyles.medium18,),
              AppSizedBox.h12SizedBox,
              Text(DateFormatter.formatYearMonthDate(widget.newsData.pub_date), style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),),
              AppSizedBox.h8SizedBox,
              Row(
                children: [
                  Container(
                    padding: AppPadding.h8v4Padding,
                    decoration: BoxDecoration(
                      color: AppColors.lightGreyColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text("작성자", style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor)),
                  ),
                  AppSizedBox.w8SizedBox,
                  Text(widget.newsData.creator.isEmpty ? "" :
                      widget.newsData.creator[0], style: AppTextStyles.medium14)
                ],
              ),
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
              Text(widget.newsData.description!, style: AppTextStyles.medium16,),
              AppSizedBox.h16SizedBox,
              Image.network(
                widget.newsData.image_url!,
                height: 250,
              )
            ],
          ),
        ),
      ),
    );
  }
}
