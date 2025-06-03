import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class NewsFlashContainer extends ConsumerStatefulWidget {
  final String newsTitle;
  const NewsFlashContainer({super.key, required this.newsTitle});

  @override
  NewsFlashContainerState createState() => NewsFlashContainerState();
}

class NewsFlashContainerState extends ConsumerState<NewsFlashContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration:
      BoxDecoration(
          color: AppColors.blackColor.withOpacity(0.7)
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: AppPadding.v12Padding,
        child: Text(
          widget.newsTitle,
          style: AppTextStyles.medium14.copyWith(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
