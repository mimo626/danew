import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
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
        children: [

        ],
      ),
    );
  }
}
