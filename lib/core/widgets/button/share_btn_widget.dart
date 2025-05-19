import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class ShareBtnWidget extends StatefulWidget {
  const ShareBtnWidget({super.key});

  @override
  State<ShareBtnWidget> createState() => _ShareBtnWidgetState();
}

class _ShareBtnWidgetState extends State<ShareBtnWidget> {
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
