import 'package:flutter/material.dart';

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

        ],
      ),
    );
  }
}
