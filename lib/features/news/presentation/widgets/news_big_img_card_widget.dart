import 'package:cached_network_image/cached_network_image.dart';
import 'package:danew/core/theme/colors.dart';
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
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: AppColors.lightGreyColor,
                borderRadius: BorderRadius.circular(8),
              ),
              clipBehavior: Clip.hardEdge, // 둥근 모서리 적용에 필요
              child: Center(
                child: (widget.newsData.image_url ?? "").isNotEmpty
                    ? CachedNetworkImage(
                  imageUrl: widget.newsData.image_url!,
                  fit: BoxFit.fitHeight,
                  height: 120,
                  errorWidget: (context, url, error) => _buildFallbackImage(),
                ) : _buildFallbackImage()
              ),
            ),
            AppSizedBox.h4SizedBox,
            Text(widget.newsData.title!, style: AppTextStyles.medium16, maxLines: 2,)
          ],
        ),
      ),
    );
  }
  Widget _buildFallbackImage() {
    return Image.asset(
      'lib/core/images/empty_img.png',
      fit: BoxFit.fitHeight,
      height: 120,
    );
  }
}
