import 'package:danew/core/globals/news_data.dart';
import 'package:danew/features/news/data/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';

class NewsBigImgCardWidget extends ConsumerStatefulWidget {
  final NewsModel newsData;
  const NewsBigImgCardWidget({super.key, required this.newsData});

  @override
  NewsBigImgCardWidgetState createState() => NewsBigImgCardWidgetState();
}

class NewsBigImgCardWidgetState extends ConsumerState<NewsBigImgCardWidget> {
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
              //TODO 빈 이미지 채우기
              child: Image.network(
                widget.newsData.image_url ?? "",
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
            AppSizedBox.h4SizedBox,
            Text(widget.newsData.title!, style: AppTextStyles.medium14,)
          ],
        ),
      ),
    );
  }
}
