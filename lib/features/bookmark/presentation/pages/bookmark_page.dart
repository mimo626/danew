import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:danew/core/widgets/tab_widget.dart';
import 'package:danew/features/bookmark/presentation/widgets/bookmark_news_tab_view.dart';
import 'package:danew/features/bookmark/presentation/widgets/bookmark_wise_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/colors.dart';

class BookmarkPage extends ConsumerStatefulWidget {
  const BookmarkPage({super.key});

  @override
  BookmarkPageState createState() => BookmarkPageState();
}

class BookmarkPageState extends ConsumerState<BookmarkPage> {
  final tabViews = [
    BookmarkNewsTabView(),
    BookmarkWiseTabView()
  ];

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
              child: TabWidget(
                  tabTitles: Globals.bookmarkTab,
                  tabViews: tabViews,
                isScrollable: false,
              ),
          ),
        ],
      ),
    );
  }
}
