import 'package:danew/core/widgets/app_bar/search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';
import '../theme/padding.dart';
import '../theme/sizedbox.dart';
import '../theme/text_styles.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController searchController = TextEditingController();
  bool hasText = false; // 검색어가 있는지 여부

  @override
  void initState() {
    super.initState();
    // 검색어가 있는지 여부를 저장하여 검색어 삭제 아이콘 표시 여부 결정
    searchController.addListener(() {
      setState(() {
        hasText = searchController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  // 검색어를 입력 받아 검색 페이지로 이동
  void handleSearch(BuildContext context) {
    final searchText = searchController.text.trim(); // 검색어를 입력 받아 공백을 제거
    if (searchText.isNotEmpty) {
      // extra 파라미터로 Map을 전달하여 타입 안전성 확보
    } else{
      // 검색어가 없을 경우 경고 메시지 출력
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('검색어를 입력해주세요.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.h16v9Padding,
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: searchController,
              onSubmitted: (_) => handleSearch(context),
              maxLines: 1,
              style: AppTextStyles.regular13.copyWith(
                color: AppColors.blackColor,
              ),
              decoration: InputDecoration(
                isCollapsed: true, // TextField 내부 패딩 제거
                hintText: '검색어를 입력해 주세요.',
                hintStyle: AppTextStyles.regular13.copyWith(
                  color: AppColors.greyColor,
                ),
                border: InputBorder.none, // 테두리 없음
                suffixIcon: hasText
                    ? GestureDetector(
                  onTap: () {
                    searchController.clear(); // 검색어 초기화
                  },
                  child: SvgPicture.asset( // 검색어 삭제 아이콘
                    'lib/core/icons/x_circle.svg',
                    width: 20,
                    height: 20,
                    color: AppColors.greyColor,
                  ),
                )
                    : null,
              ),
            ),
          ),
          AppSizedBox.w4SizedBox,
          GestureDetector( // 검색 아이콘
            onTap: () => handleSearch(context),
            child: SvgPicture.asset(
              'lib/core/icons/search.svg',
              width: 20,
              height: 20,
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
