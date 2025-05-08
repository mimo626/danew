import 'package:flutter/material.dart';

import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';

class NewsImgCard extends StatefulWidget {
  final String imgRoute;
  final String newsTitle;
  final VoidCallback onTap;
  const NewsImgCard({super.key, required this.imgRoute, required this.newsTitle, required this.onTap});

  @override
  State<NewsImgCard> createState() => _NewsImgCardState();
}

class _NewsImgCardState extends State<NewsImgCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                widget.imgRoute,
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
            AppSizedBox.h4SizedBox,
            Text(widget.newsTitle, style: AppTextStyles.medium14,)
          ],
        ),
      ),
    );
  }
}
