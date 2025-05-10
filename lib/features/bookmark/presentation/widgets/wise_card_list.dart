import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class WiseCardList extends StatefulWidget {
  const WiseCardList({super.key});

  @override
  State<WiseCardList> createState() => _WiseCardListState();
}

class _WiseCardListState extends State<WiseCardList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h20Padding,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Globals.newsImgCardColumnDataLength,
        itemBuilder: (context, index) {
          final newsIndex = Globals.newsImgCardColumnData[index];
          return Padding(
            padding: AppPadding.bottom16Padding,
            child: Container(
              padding: AppPadding.all20Padding,
              decoration: BoxDecoration(
                color: AppColors.lightGreyColor,
                borderRadius: BorderRadius.circular(8),
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
                  Text(newsIndex.newsTitle, style: AppTextStyles.medium14,),
                  AppSizedBox.h8SizedBox,
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text(newsIndex.time, style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
