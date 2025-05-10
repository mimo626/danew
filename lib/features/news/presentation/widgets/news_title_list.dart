import 'package:danew/core/globals/globals.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class NewsTitleList extends StatefulWidget {
  final List<String> newsList;
  const NewsTitleList({
    super.key,
    required this.newsList,
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
          itemCount: Globals.titleNewsDataLength,
          itemBuilder: (context, index) {
            final newsIndex = widget.newsList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {},
                    child: Text(newsIndex, style: AppTextStyles.medium14,)
                ),
                Divider(color: AppColors.lightGreyColor,)
              ],
            );
          },
        ),
      ),
    );
  }
}
