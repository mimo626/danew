import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/padding.dart';
import '../../theme/text_styles.dart';

class BasicBtn extends StatelessWidget {
  final String btnText;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const BasicBtn({
    super.key,
    required this.btnText,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:AppPadding.h20Padding,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: AppPadding.v16Padding,
          minimumSize: Size(double.infinity, 56),
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        child: Text(
          btnText,
          style: AppTextStyles.medium16.copyWith(color: textColor),
        ),
      ),
    );
  }
}