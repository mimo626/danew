import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/theme/text_styles.dart';
import 'package:danew/core/widgets/button/bookmark_toggle_btn.dart';
import 'package:flutter/material.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';

class WisePage extends StatefulWidget {
  const WisePage({super.key});

  @override
  State<WisePage> createState() => _WisePageState();
}

class _WisePageState extends State<WisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        title: "명언",
        showNotificationIcon: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("2025.04.13", style: AppTextStyles.semiBold18,),
          AppSizedBox.h16SizedBox,
          Center(
            child: Container(
              width: 260,
              height: 480,
              padding: AppPadding.all20Padding,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Center(
                      child: Text(Globals.wiseCardData[0].content, style: AppTextStyles.semiBold16.copyWith(color: AppColors.primaryColor),)),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Globals.wiseCardData[0].author, style: AppTextStyles.medium14.copyWith(color: AppColors.primaryColor),),
                      BookmarkToggleBtn()
                    ],
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
