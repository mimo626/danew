import 'package:danew/core/globals/news_img_card.dart';
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

  // 북마크의 카테고리 탭 위젯
  static List<String> bookmarkTab = [
    "뉴스", "명언",
  ];

  // 타이틀만 있는 뉴스 더미데이터
  static List<String> titleNewsData = [
    "정부, 2025년까지 탄소배출 40% 감축 목표 발표",
    "국내 첫 자율주행 택시 상용화 시작…서울 시범 운행",
    "원달러 환율 급등…1,400원 돌파하며 금융시장 흔들",
  ];

  static int titleNewsDataLength = 3;

  static List<NewsImgCard> newsImgCardData = [
    NewsImgCard(imgRoute: "lib/core/images/img.png", newsTitle: "대형마트 의무휴업 폐지 논의 본격화",),
    NewsImgCard(imgRoute: "lib/core/images/img_1.png", newsTitle: "청년층 주거 대책 발표…월세 지원 확대 예정",)
  ];

  static List<NewsImgCardColumn> newsImgCardColumnData = [
    NewsImgCardColumn(imgRoute: "lib/core/images/img_2.png", newsTitle: "국제유가 급등…휘발유 가격 1,800원 돌파", time: "3시간 전"),
    NewsImgCardColumn(imgRoute: "lib/core/images/img_3.png", newsTitle: "드라마 ‘시간의 끝에서’ 넷플릭스 글로벌 1위 등극", time: "3시간 전"),
    NewsImgCardColumn(imgRoute: "lib/core/images/img_4.png", newsTitle: "전기차 보조금 개편…국산차 중심으로 재편", time: "3시간 전"),
    NewsImgCardColumn(imgRoute: "lib/core/images/img_5.png", newsTitle: "초등학교 스마트 교육 확대…태블릿 수업 본격 도입", time: "3시간 전"),
    NewsImgCardColumn(imgRoute: "lib/core/images/img_6.png", newsTitle: "2030 세대, ‘짠테크’ 대신 ‘가치소비’ 트렌드 주도", time: "3시간 전"),
    NewsImgCardColumn(imgRoute: "lib/core/images/img_7.png", newsTitle: "국립중앙박물관, 고대 유물 특별 전시회 개막", time: "3시간 전"),
    NewsImgCardColumn(imgRoute: "lib/core/images/img_8.png", newsTitle: "중소기업 지원 확대…금융·세제 혜택 강화", time: "3시간 전"),
  ];

  static int newsImgCardColumnDataLength = 7;

  static List<String> recentSearchWordList = [
    "검색어1",
    "검색어2",
    "검색어3",
    "검색어4",
    "검색어5",
    "검색어6",
    "검색어7",
    "검색어8",
    "검색어9",
    "검색어10",
    "검색어10",
    "검색어10",
    "검색어10",
    "검색어10",
    "검색어10",
    "검색어10",
  ];

// "고령화 사회 진입…노년층 복지정책 강화 시급",
  // "SNS 이용자 수 5천만 돌파…10대 이용률 급상승",
  // "스마트폰 시장, 폴더블폰 점유율 20% 육박",
  // "주 4일제 시범 도입 기업 증가…직원 만족도 ‘상승’",
  // "해양 쓰레기 수거 드론 도입…환경 보호 박차",
  // "세계적인 디자이너 A씨, 서울 패션위크 참여 확정",
  // "문화재청, 100년 전 기록 사진 공개…역사 재조명"
}
