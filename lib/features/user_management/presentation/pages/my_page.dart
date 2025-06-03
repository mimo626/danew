import 'package:danew/core/theme/colors.dart';
import 'package:danew/features/user_management/presentation/widgets/my_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/app_bar/primary_appbar.dart';
import '../widgets/my_profile_widget.dart';

class MyPage extends ConsumerStatefulWidget {
  const MyPage({super.key});

  @override
  MyPageState createState() => MyPageState();
}

class MyPageState extends ConsumerState<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        title: "마이페이지",
        showNotificationIcon: true,
        showSettingIcon: true,
      ),
      body: Column(
        children: [
          MyProfileWidget(),
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