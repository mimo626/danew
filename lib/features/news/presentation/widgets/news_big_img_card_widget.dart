import 'package:danew/core/globals/news_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';

class NewsBigImgCardWidget extends StatefulWidget {
  final NewsData newsData;
  const NewsBigImgCardWidget({super.key, required this.newsData});

  @override
  State<NewsBigImgCardWidget> createState() => _NewsBigImgCardWidgetState();
}

class _NewsBigImgCardWidgetState extends State<NewsBigImgCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.push("/newsDetail", extra: {"newsData": widget.newsData}),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.newsData.imgUrl,
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
            AppSizedBox.h4SizedBox,
            Text(widget.newsData.newsTitle, style: AppTextStyles.medium14,)
          ],
        ),
      ),
    );
  }
}
