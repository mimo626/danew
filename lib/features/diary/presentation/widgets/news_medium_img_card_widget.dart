import 'package:flutter/material.dart';

import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';

class NewsMediumImgCardWidget extends StatefulWidget {
  final String imgRoute;
  final String newsTitle;
  final VoidCallback onTap;
  const NewsMediumImgCardWidget({super.key, required this.imgRoute, required this.newsTitle, required this.onTap});

  @override
  State<NewsMediumImgCardWidget> createState() => _NewsMediumImgCardWidgetState();
}

class _NewsMediumImgCardWidgetState extends State<NewsMediumImgCardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.imgRoute,
                fit: BoxFit.cover,
                width: 100,
                height: 60,
              ),
            ),
            AppSizedBox.h4SizedBox,
            Text(widget.newsTitle, style: AppTextStyles.medium12,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
