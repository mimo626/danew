import 'package:danew/core/globals/news_data.dart';
import 'package:danew/core/intl/date_formatter.dart';
import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/theme/text_styles.dart';
import 'package:danew/core/widgets/button/bookmark_toggle_btn.dart';
import 'package:danew/core/widgets/button/share_btn_widget.dart';
import 'package:danew/core/widgets/list_view_widget.dart';
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
              ListViewWidget(
                  list: widget.newsData.category,
                  listLength: widget.newsData.category.length,
                  listWidgetBuilder: (item) => Padding(
                    padding: AppPadding.right8Padding,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.tertiaryColor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: AppPadding.h12v6Padding,
                        child: Text(item, style: AppTextStyles.medium14.copyWith(color: AppColors.primaryColor),),),
                    ),
                  ),
              ),
              AppSizedBox.h12SizedBox,
              Text(widget.newsData.title!, style: AppTextStyles.medium18,),
              AppSizedBox.h12SizedBox,
              Text(DateFormatter.formatYearMonthDate(widget.newsData.pub_date), style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),),
              AppSizedBox.h4SizedBox,
              ListViewWidget(
                  list: widget.newsData.category,
                  listLength: widget.newsData.category.length,
                  listWidgetBuilder: (item) => Text("${item}, ", style: AppTextStyles.medium14),
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
