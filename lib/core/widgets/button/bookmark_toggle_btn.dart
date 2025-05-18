import 'package:danew/core/theme/colors.dart';
import 'package:flutter/material.dart';

class BookmarkToggleBtn extends StatefulWidget {
  const BookmarkToggleBtn({super.key});

  @override
  _BookmarkToggleBtnState createState() => _BookmarkToggleBtnState();
}

class _BookmarkToggleBtnState extends State<BookmarkToggleBtn> {
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
