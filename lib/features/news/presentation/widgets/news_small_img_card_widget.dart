 import 'package:danew/core/intl/date_formatter.dart';
import 'package:danew/features/news/data/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class NewsSmallImgCardWidget extends ConsumerWidget {
  const NewsSmallImgCardWidget({
    super.key,
    required this.item,
  });

  final NewsModel item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: AppPadding.bottom16Padding,
      child: InkWell(
        onTap: () => context.push("/newsDetail", extra: {"newsData": item}),
        child: Container(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: AppPadding.right16Padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.title!, style: AppTextStyles.medium14,
                      maxLines: 2,),
                      SizedBox(),
                      Text(DateFormatter.formatYearMonthDate(item.pub_date), style: AppTextStyles.medium12.copyWith(color: AppColors.greyColor),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  //TODO 빈 이미지 채우기
                  child: Image.network(
                    item.image_url ?? "",
                    fit: BoxFit.cover,
                    height: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
