import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class RecentSearchWordWidget extends ConsumerWidget {
  const RecentSearchWordWidget({
    super.key,
    required this.item,
  });

  final String item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                  child: Text(item, style: AppTextStyles.medium14,)),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: AppPadding.all8Padding,
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: SvgPicture.asset(
                    "lib/core/icons/x.svg",
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            )
          ],
        ),
        Divider(color: AppColors.lightGreyColor,)
      ],
    );
  }
}
