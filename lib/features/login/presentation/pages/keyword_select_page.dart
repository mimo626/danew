import 'package:danew/core/globals/globals.dart';
import 'package:danew/features/login/presentation/widgets/keyword_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';
import '../../../../core/widgets/button/basic_btn.dart';

class KeywordSelectPage extends StatefulWidget {
  const KeywordSelectPage({super.key});

  @override
  State<KeywordSelectPage> createState() => _KeywordSelectPageState();
}

class _KeywordSelectPageState extends State<KeywordSelectPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        isLeadingButtonExist: true,
        leadingButtonIcon: "lib/core/icons/arrow_back.svg",
        leadingButtonPressed:() => context.pop(),
      ),
      body: Padding(
        padding: AppPadding.h20Padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizedBox.h32SizedBox,
            Text("관심사 키워드 선택",
              style: AppTextStyles.semiBold24,
            ),
            AppSizedBox.h8SizedBox,
            Text("관심사 키워드를 토대로 맞춤형 뉴스를 제공합니다.",
              style: AppTextStyles.regular14.copyWith(color: AppColors.greyColor),
            ),
            AppSizedBox.h40SizedBox,
            Expanded(
              child: GridView.builder(
                itemCount: Globals.keywordList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // ✅ 가로에 3개
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1, // 정사각형
                ),
                itemBuilder: (context, index) {
                  final item = Globals.keywordList[index];
                  return KeywordBtnWidget(keyword: item);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: AppPadding.v16Padding,
        child: BasicBtn(
            btnText: "다음",
            textColor: AppColors.whiteColor,
            backgroundColor: AppColors.primaryColor,
            onPressed: () => context.go("/")
        ),
      ),
    );
  }
}
