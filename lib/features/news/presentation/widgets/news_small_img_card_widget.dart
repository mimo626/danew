 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/globals/news_data.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class NewsSmallImgCardWidget extends StatelessWidget {
  const NewsSmallImgCardWidget({
    super.key,
    required this.item,
  });

  final NewsData item;

  @override
  Widget build(BuildContext context) {
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
                      Text(item.newsTitle, style: AppTextStyles.medium14,
                      maxLines: 2,),
                      SizedBox(),
                      Text(item.pubDate, style: AppTextStyles.medium12.copyWith(color: AppColors.greyColor),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    item.imgUrl,
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
