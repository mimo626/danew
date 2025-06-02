import 'package:danew/core/theme/sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        title: "프로필 수정",
      ),
      body: Column(
        children: [
          AppSizedBox.h16SizedBox,
          
        ],
      ),
    );
  }
}
