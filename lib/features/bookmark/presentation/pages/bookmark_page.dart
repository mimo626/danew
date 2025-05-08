import 'package:danew/core/globals/globals.dart';
import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:danew/core/widgets/scrollable_tab_widget.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  final tabViews = [
    const Center(child: Text('뉴스')),
    const Center(child: Text('명언')),
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
              child: ScrollableTabWidget(
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
