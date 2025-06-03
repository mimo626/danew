import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class KeywordBtnWidget extends ConsumerStatefulWidget {
  final String keyword;
  const KeywordBtnWidget({super.key, required this.keyword});

  @override
  KeywordBtnWidgetState createState() => KeywordBtnWidgetState();
}

class KeywordBtnWidgetState extends ConsumerState<KeywordBtnWidget> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelect = !isSelect;
        });
      },
      child: Container(
        width: (MediaQuery.of(context).size.width-64)/3,
        height: (MediaQuery.of(context).size.width-64)/3,
        decoration: BoxDecoration(
            color: isSelect ? AppColors.primaryColor
                : AppColors.fortyColor,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: Text(widget.keyword, style: AppTextStyles.medium16.copyWith(
              color: isSelect? AppColors.whiteColor
                  : AppColors.primaryColor),),
        ),
      ),
    );
  }
}
