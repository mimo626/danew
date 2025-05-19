import 'package:danew/core/globals/news_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';

class NewsMediumImgCardWidget extends StatefulWidget {
  final NewsData newsData;
  const NewsMediumImgCardWidget({super.key, required this.newsData,});

  @override
  State<NewsMediumImgCardWidget> createState() => _NewsMediumImgCardWidgetState();
}

class _NewsMediumImgCardWidgetState extends State<NewsMediumImgCardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push("/newsDetail", extra: {"newsData": widget.newsData}),
      child: SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.newsData.imgUrl,
                fit: BoxFit.cover,
                width: 100,
                height: 60,
              ),
            ),
            AppSizedBox.h4SizedBox,
            Text(widget.newsData.newsTitle, style: AppTextStyles.medium12,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
