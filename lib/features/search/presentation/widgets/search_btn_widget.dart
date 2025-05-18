import 'package:danew/core/widgets/app_bar/search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';

class SearchBtnWidget extends StatefulWidget {
  const SearchBtnWidget({super.key});

  @override
  State<SearchBtnWidget> createState() => _SearchBtnWidgetState();
}

class _SearchBtnWidgetState extends State<SearchBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push("/search"),
      child: Container(
        padding: AppPadding.h16v9Padding,
        decoration: BoxDecoration(
          color: AppColors.lightGreyColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('검색어를 입력해 주세요.', style: AppTextStyles.regular13.copyWith(
                color: AppColors.greyColor)
            ),
            SvgPicture.asset(
              'lib/core/icons/search.svg',
              width: 20,
              height: 20,
              color: AppColors.greyColor,
            ),
          ],
        ),
      ),
    );
  }
}
