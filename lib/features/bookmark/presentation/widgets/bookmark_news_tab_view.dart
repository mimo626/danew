import 'package:danew/core/theme/sizedbox.dart';
import 'package:flutter/material.dart';


class BookmarkNewsTabView extends StatefulWidget {
  const BookmarkNewsTabView({super.key});

  @override
  State<BookmarkNewsTabView> createState() => _BookmarkNewsTabViewState();
}

class _BookmarkNewsTabViewState extends State<BookmarkNewsTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppSizedBox.h16SizedBox,
          // ListViewWidget(
          //     list: Globals.newsSmallImgCardData,
          //     listLength: 7,
          //     listWidgetBuilder: (item) => NewsSmallImgCardWidget(item: item)
          // ),
        ],
      ),
    );
  }
}
