import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class NewsFlashContainer extends StatefulWidget {
  final String newsTitle;
  const NewsFlashContainer({super.key, required this.newsTitle});

  @override
  State<NewsFlashContainer> createState() => _NewsFlashContainerState();
}

class _NewsFlashContainerState extends State<NewsFlashContainer> {
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
