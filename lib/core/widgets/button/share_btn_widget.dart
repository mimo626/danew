import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme/colors.dart';

class ShareBtnWidget extends ConsumerStatefulWidget {
  const ShareBtnWidget({super.key});

  @override
  ShareBtnWidgetState createState() => ShareBtnWidgetState();
}

class ShareBtnWidgetState extends ConsumerState<ShareBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 30,
      child: IconButton(
        icon: Icon(
          Icons.share,
          color: AppColors.primaryColor,
        ),
        padding: EdgeInsets.zero, // 내부 여백 제거
        onPressed: () {
          setState(() {

          });
        },
      ),
    );
  }
}
