import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:danew/core/widgets/tab_widget.dart';
import 'package:danew/features/bookmark/presentation/widgets/bookmark_news_tab_view.dart';
import 'package:danew/features/bookmark/presentation/widgets/bookmark_wise_tab_view.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  final tabViews = [
    BookmarkNewsTabView(),
    BookmarkWiseTabView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
