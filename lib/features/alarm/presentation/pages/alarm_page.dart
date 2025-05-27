import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/widgets/list_view_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  List<String> alarmList = ["알람1", "알람2", "알람3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        title: "알림",
      ),
      body: Column(
        children: [
          AppSizedBox.h16SizedBox,
          ListViewWidget(
            list: alarmList,
            listLength: alarmList.length,
            listWidgetBuilder: (item) => AlarmWidget(title: item),)
        ],
      ),
    );
  }
}

class AlarmWidget extends StatelessWidget {
  final String title;
  const AlarmWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppSizedBox.h4SizedBox,
          Text(title, style: AppTextStyles.medium14,
            maxLines: 2,),
          AppSizedBox.h16SizedBox,
          Text("2025.12.22", style: AppTextStyles.medium12.copyWith(color: AppColors.greyColor),),
          AppSizedBox.h4SizedBox,
          Divider(color: AppColors.lightGreyColor,)
        ],
      ),
    );
  }
}
