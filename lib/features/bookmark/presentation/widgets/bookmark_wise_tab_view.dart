import 'package:danew/features/bookmark/presentation/widgets/wise_card_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/globals/globals.dart';
import '../../../../core/theme/sizedbox.dart';
import '../../../../core/widgets/list_view_widget.dart';

class BookmarkWiseTabView extends StatefulWidget {
  const BookmarkWiseTabView({super.key});

  @override
  State<BookmarkWiseTabView> createState() => _BookmarkWiseTabViewState();
}

class _BookmarkWiseTabViewState extends State<BookmarkWiseTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppSizedBox.h16SizedBox,
          ListViewWidget(
            list: Globals.wiseCardData,
            listLength: Globals.wiseCardData.length,
            listWidgetBuilder: (item) => WiseCardWidget(item: item),
          ),
        ],
      ),
    );
  }
}
