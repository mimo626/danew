import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class RecentSearchWordList extends StatefulWidget {
  const RecentSearchWordList({super.key});

  @override
  State<RecentSearchWordList> createState() => _RecentSearchWordListState();
}

class _RecentSearchWordListState extends State<RecentSearchWordList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h20Padding,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Globals.recentSearchWordList.length,
        itemBuilder: (context, index) {
          final newsIndex = Globals.recentSearchWordList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                        child: Text(newsIndex, style: AppTextStyles.medium14,)),
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
        },
      ),
    );
  }
}
