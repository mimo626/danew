import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/sizedbox.dart';

class BookmarkPage extends ConsumerStatefulWidget {
  const BookmarkPage({super.key});

  @override
  BookmarkPageState createState() => BookmarkPageState();
}

class BookmarkPageState extends ConsumerState<BookmarkPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        title: "북마크",
        showNotificationIcon: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: AppSizedBox.h16SizedBox,
          // ListViewWidget(
          //     list: Globals.newsSmallImgCardData,
          //     listLength: 7,
          //     listWidgetBuilder: (item) => NewsSmallImgCardWidget(item: item)
          // ),
          ),
        ],
      ),
    );
  }
}
