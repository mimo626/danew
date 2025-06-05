import 'package:danew/core/globals/globals.dart';
import 'package:danew/features/diary/presentation/widgets/news_medium_img_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';
import '../../../../core/widgets/horizontal_list_view_widget.dart';

class DiaryPage extends ConsumerStatefulWidget {
  const DiaryPage({super.key});

  @override
  DiaryPageState createState() => DiaryPageState();
}

class DiaryPageState extends ConsumerState<DiaryPage> {
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
          HorizontalListViewWidget(
              list: Globals.newsMediumImgCardData,
            listLength: Globals.newsMediumImgCardData.length,
            listWidgetBuilder: (item) => Padding(
              padding: AppPadding.right12Padding,
              child: NewsMediumImgCardWidget(
                newsData: item,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
