import 'package:danew/features/bookmark/presentation/widgets/wise_card_list.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/sizedbox.dart';

class BookmarkWiseTab extends StatefulWidget {
  const BookmarkWiseTab({super.key});

  @override
  State<BookmarkWiseTab> createState() => _BookmarkWiseTabState();
}

class _BookmarkWiseTabState extends State<BookmarkWiseTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppSizedBox.h16SizedBox,
          WiseCardList(),
        ],
      ),
    );
  }
}
