import 'package:danew/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';

class MyListWidget extends ConsumerWidget {
  final String title;
  final VoidCallback onTap;
  final Color color;
  const MyListWidget({super.key, 
    required this.title, 
    required this.onTap, 
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppPadding.h20v16Padding,
            child: Text(title, style: AppTextStyles.medium14.copyWith(color: color),),
          ),
          Divider(color: AppColors.lightGreyColor,)
        ],
      ),
    );
  }
}
