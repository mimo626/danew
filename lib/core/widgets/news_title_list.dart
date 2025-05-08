import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/padding.dart';
import '../theme/text_styles.dart';

class NewsTitleList extends StatefulWidget {
  final List<String> newList;
  const NewsTitleList({
    super.key,
    required this.newList,
  });

  @override
  State<NewsTitleList> createState() => _NewsTitleListState();
}

class _NewsTitleListState extends State<NewsTitleList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h20Padding,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            final newsIndex = widget.newList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(newsIndex, style: AppTextStyles.medium14,),
                Divider(color: AppColors.lightGreyColor,)
              ],
            );
          },
        ),
      ),
    );
  }
}
