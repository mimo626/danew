import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/intl/date_formatter.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';
import '../../data/model/news_model.dart';

class NewsTitleCardWidget extends ConsumerWidget {
  final NewsModel newsModel;
  const NewsTitleCardWidget({
    super.key,
    required this.newsModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => context.push("/newsDetail", extra: {"newsData": newsModel}),
      child: Container(
        width: 240,
        decoration: BoxDecoration(
          color: AppColors.lightGreyColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: AppPadding.h12v8Padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(newsModel.title!, style: AppTextStyles.medium16, maxLines: 2,),
              AppSizedBox.h8SizedBox,
              Text(DateFormatter.formatYearMonthDate(newsModel.pub_date),
                style: AppTextStyles.medium12.copyWith(color: AppColors.greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}