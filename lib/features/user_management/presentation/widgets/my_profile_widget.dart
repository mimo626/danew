import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/sizedbox.dart';

class MyProfileWidget extends ConsumerWidget {
  const MyProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
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
    );
  }
}
