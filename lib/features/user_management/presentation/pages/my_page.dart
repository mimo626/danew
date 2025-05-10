import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/features/user_management/presentation/widgets/my_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/app_bar/primary_appbar.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppbar(
        title: "마이페이지",
        showNotificationIcon: true,
        showSettingIcon: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: AppPadding.h20v16Padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.secondaryColor,
                      radius: 28,
                      child: SvgPicture.asset("lib/core/icons/user.svg"),
                    ),
                    AppSizedBox.w8SizedBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("danew@naver.com"),
                        AppSizedBox.h8SizedBox,
                        Text("강민주"),
                      ],
                    )
                  ],
                ),
                InkWell(
                    child: SvgPicture.asset("lib/core/icons/pencil.svg")
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.lightGreyColor,
            thickness: 10,
          ),
          MyListWidget(title: "공지사항", onTap: () {}),
          MyListWidget(title: "문의하기", onTap: () {}),
          MyListWidget(title: "자주 묻는 질문", onTap: () {}),
          MyListWidget(title: "오픈소스 라이선스", onTap: () {}),
          MyListWidget(title: "버전 정보", onTap: () {}),
          MyListWidget(title: "로그아웃", onTap: () {}, color: AppColors.greyColor,),
        ],
      ),
    );
  }
}
