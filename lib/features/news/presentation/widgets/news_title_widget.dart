import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/widgets/list_view_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class NewsTitleWidget extends StatelessWidget {
  const NewsTitleWidget({
    super.key,
    required this.item,
  });

  final String item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () {},
            child: Text(item, style: AppTextStyles.medium14,)
        ),
        Divider(color: AppColors.lightGreyColor,)
      ],
    );
  }
}
