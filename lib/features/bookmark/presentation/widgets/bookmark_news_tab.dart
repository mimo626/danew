import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/features/news/presentation/widgets/news_img_card_list.dart';
import 'package:flutter/material.dart';

class BookmarkNewsTab extends StatefulWidget {
  const BookmarkNewsTab({super.key});

  @override
  State<BookmarkNewsTab> createState() => _BookmarkNewsTabState();
}

class _BookmarkNewsTabState extends State<BookmarkNewsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppSizedBox.h16SizedBox,
          NewsImgCardList(newsList: Globals.newsImgCardColumnData),
        ],
      ),
    );
  }
}
