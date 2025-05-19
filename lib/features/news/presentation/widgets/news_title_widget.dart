import 'package:danew/core/globals/news_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class NewsTitleWidget extends StatelessWidget {
  const NewsTitleWidget({
    super.key,
    required this.item,
  });

  final NewsData item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () => context.push("/newsDetail", extra: {"newsData": item}),
            child: Text(item.newsTitle, style: AppTextStyles.medium14,)
        ),
        Divider(color: AppColors.lightGreyColor,)
      ],
    );
  }
}
