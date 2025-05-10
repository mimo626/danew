import 'package:danew/core/globals/news_img_card.dart';
import 'package:danew/core/globals/wise_card.dart';
import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/widgets/list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class WiseCardWidget extends StatelessWidget {
  final WiseCard item;

  const WiseCardWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.bottom16Padding,
      child: Container(
        padding: AppPadding.all20Padding,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(0.1), // 그림자 색과 투명도
              spreadRadius: 1, // 그림자 확산 범위
              blurRadius: 6, // 그림자 흐림 정도
              offset: Offset(0, 3), // 그림자의 위치 (x, y)
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                  "lib/core/icons/bookmark.svg",
                color: AppColors.primaryColor,
              ),
            ),
            Text(item.content, style: AppTextStyles.medium14,),
            AppSizedBox.h8SizedBox,
            Align(
                alignment: Alignment.bottomRight,
                child: Text(item.author, style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),)),
          ],
        ),
      ),
    );
  }
}
