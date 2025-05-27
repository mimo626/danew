import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/padding.dart';

class SettingListTileWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SettingListTileWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: AppPadding.h20v16Padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            SvgPicture.asset(
              "lib/core/icons/arrow_forward.svg",
            )
          ],
        ),
      ),
    );
  }
}