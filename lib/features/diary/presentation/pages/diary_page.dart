import 'package:danew/core/globals/globals.dart';
import 'package:danew/features/diary/presentation/widgets/news_medium_img_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';

class DiaryPage extends StatefulWidget {
  const DiaryPage({super.key});

  @override
  State<DiaryPage> createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        title: "기록",
        showNotificationIcon: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppPadding.h20v16Padding,
            child: Text("최근 본 뉴스", style: AppTextStyles.semiBold18,),
          ),
          Padding(
            padding: AppPadding.h20Padding,
            child: Container(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal, // 가로 스크롤
                itemCount: Globals.newsMediumImgCardData.length,
                itemBuilder: (context, index) {
                  final item = Globals.newsMediumImgCardData[index];
                  return Padding(
                    padding: AppPadding.right12Padding,
                    child: NewsMediumImgCardWidget(
                      newsData: item,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
