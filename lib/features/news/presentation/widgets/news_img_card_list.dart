import 'package:danew/core/theme/sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/globals/news_img_card.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class NewsImgCardList extends StatefulWidget {
  final List<NewsImgCardColumn> newsList;
  const NewsImgCardList({super.key, required this.newsList});

  @override
  State<NewsImgCardList> createState() => _NewsImgCardListState();
}

class _NewsImgCardListState extends State<NewsImgCardList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h20Padding,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: Globals.newsImgCardColumnDataLength,
          itemBuilder: (context, index) {
            final newsIndex = widget.newsList[index];
            return Padding(
              padding: AppPadding.bottom16Padding,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: AppPadding.right16Padding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(newsIndex.newsTitle, style: AppTextStyles.medium14,
                              maxLines: 2,),
                              SizedBox(),
                              Text(newsIndex.time, style: AppTextStyles.medium12.copyWith(color: AppColors.greyColor),),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            newsIndex.imgRoute,
                            fit: BoxFit.cover,
                            height: 60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
