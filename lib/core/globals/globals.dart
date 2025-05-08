import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'nav_item.dart';

class Globals {
  // BottomNavigationBarItem의 아이콘 사이즈
  static double navItemSize = 24;

  // BottomNavigationBarItem들
  static List<NavItem> navItems = [
    NavItem(
      icon: Icon(
        Icons.home_outlined,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.home,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "홈",
    ),
    NavItem(
      icon: Icon(
        Icons.search_outlined,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.search,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "검색",
    ),
    NavItem(
      icon: Icon(
        Icons.library_books_outlined,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.library_books,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "기록",
    ),
    NavItem(
      icon: Icon(
        Icons.bookmark_outline,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.bookmark,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "북마크",
    ),
    NavItem(
      icon: Icon(
        Icons.person_outline,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.person,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "마이페이지",
    ),
  ];

  // 홈의 뉴스 카테고리 탭 위젯
  static List<String> homeTab = [
    "추천", "인기", "정치", "경제", "엔터", "세계", "환경", "스포츠",
    "기술", "음식"
  ];
}
