import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';
import '../widgets/setting_list_tile_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        title: "설정",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSizedBox.h16SizedBox,
          SettingListTileWidget(
            title: "로그인 설정",
            onTap: () {},
          ),
          SettingListTileWidget(
            title: "알림 설정",
            onTap: () {},
          ),
          SettingListTileWidget(
            title: "개인정보처리방침",
            onTap: () {},
          ),
          SettingListTileWidget(
            title: "서비스 이용 약관",
            onTap: () {},
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: AppPadding.h20v16Padding,
              child: Row(
                children: [
                  Text("회원탈퇴", style: AppTextStyles.medium14.copyWith(color: AppColors.greyColor),),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
