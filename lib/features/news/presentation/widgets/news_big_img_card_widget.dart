import 'package:flutter/material.dart';

import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';

class NewsBigImgCardWidget extends StatefulWidget {
  final String imgRoute;
  final String newsTitle;
  final VoidCallback onTap;
  const NewsBigImgCardWidget({super.key, required this.imgRoute, required this.newsTitle, required this.onTap});

  @override
  State<NewsBigImgCardWidget> createState() => _NewsBigImgCardWidgetState();
}

class _NewsBigImgCardWidgetState extends State<NewsBigImgCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
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
