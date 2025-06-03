import 'package:danew/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarkToggleBtn extends ConsumerStatefulWidget {
  const BookmarkToggleBtn({super.key});

  @override
  BookmarkToggleBtnState createState() => BookmarkToggleBtnState();
}

class BookmarkToggleBtnState extends ConsumerState<BookmarkToggleBtn> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 30,
      child: IconButton(
        icon: Icon(
          isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
          color: AppColors.primaryColor,
        ),
        padding: EdgeInsets.zero, // 내부 여백 제거
        onPressed: () {
          setState(() {
            isBookmarked = !isBookmarked;
          });
        },
      ),
    );
  }
}
