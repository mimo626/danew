import 'package:danew/features/news/data/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class NewsTitleWidget extends ConsumerWidget {
  const NewsTitleWidget({
    super.key,
    required this.item,
  });

  final NewsModel item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () => context.push("/newsDetail", extra: {"newsData": item}),
            child: Text(item.title!, style: AppTextStyles.medium14, maxLines: 1,)
        ),
        Divider(color: AppColors.lightGreyColor,)
      ],
    );
  }
}
