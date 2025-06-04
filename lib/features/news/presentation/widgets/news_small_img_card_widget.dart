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
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  clipBehavior: Clip.hardEdge, // 둥근 모서리 적용에 필요
                  child: Center(
                    child: (item.image_url ?? "").isNotEmpty
                        ? Image.network(
                          item.image_url!,
                          fit: BoxFit.fitHeight,
                          height: 60,
                        )
                        : Image.asset(
                          "lib/core/images/empty_img.png",
                          fit: BoxFit.fitHeight,
                          height: 60,
                    ),
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
